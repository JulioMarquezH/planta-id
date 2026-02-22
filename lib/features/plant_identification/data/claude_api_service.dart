import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../domain/plant_info.dart';
import '../prompt/plant_prompt_template.dart';

class ClaudeApiService {
  final Dio _dio;

  ClaudeApiService({Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              // On web, use local proxy to avoid CORS. On mobile, call API directly.
              baseUrl: kIsWeb
                  ? '/api'
                  : 'https://api.anthropic.com/v1',
              headers: {
                if (!kIsWeb) 'x-api-key': dotenv.env['ANTHROPIC_API_KEY'] ?? '',
                if (!kIsWeb) 'anthropic-version': '2023-06-01',
                'content-type': 'application/json',
              },
              connectTimeout: const Duration(seconds: 30),
              receiveTimeout: const Duration(seconds: 120),
            ));

  Future<PlantInfo> identifyPlant({
    required String base64Image,
    required String mediaType,
  }) async {
    final requestBody = {
      'model': 'claude-sonnet-4-20250514',
      'max_tokens': 2048,
      'system': PlantPromptTemplate.systemPrompt,
      'tools': [
        {
          'name': 'identify_plant',
          'description':
              'Identifies a plant from an image and returns structured information about it including care instructions, climate info, pests, diseases, and fun facts.',
          'input_schema': PlantPromptTemplate.jsonSchema,
        }
      ],
      'tool_choice': {'type': 'tool', 'name': 'identify_plant'},
      'messages': [
        {
          'role': 'user',
          'content': [
            {
              'type': 'image',
              'source': {
                'type': 'base64',
                'media_type': mediaType,
                'data': base64Image,
              },
            },
            {
              'type': 'text',
              'text': PlantPromptTemplate.userPrompt,
            },
          ],
        },
      ],
    };

    try {
      final response = await _dio.post('/messages', data: requestBody);
      final responseData = response.data;

      if (responseData['stop_reason'] == 'refusal') {
        throw const PlantIdentificationException(
          'No se pudo identificar la planta. Intenta con una foto más clara.',
        );
      }

      // With tool_use, the result is always in the tool_use content block
      final contentList = responseData['content'] as List<dynamic>;
      final toolUseBlock = contentList.firstWhere(
        (block) => block['type'] == 'tool_use',
        orElse: () => null,
      );

      if (toolUseBlock == null) {
        throw const PlantIdentificationException(
          'No se pudo identificar la planta. Intenta con una foto más clara.',
        );
      }

      final Map<String, dynamic> plantJson =
          toolUseBlock['input'] as Map<String, dynamic>;
      return PlantInfo.fromJson(plantJson);
    } on DioException catch (e) {
      if (e.response?.statusCode == 429) {
        throw const PlantIdentificationException(
          'Demasiadas solicitudes. Espera un momento e intenta de nuevo.',
        );
      } else if (e.response?.statusCode == 401) {
        throw const PlantIdentificationException(
          'Error de autenticación. Verifica tu API key.',
        );
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw const PlantIdentificationException(
          'La conexión tardó demasiado. Verifica tu internet e intenta de nuevo.',
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw const PlantIdentificationException(
          'Sin conexión a internet. Verifica tu conexión e intenta de nuevo.',
        );
      }
      throw PlantIdentificationException(
        'Error al identificar la planta: ${e.message}',
      );
    } on FormatException {
      throw const PlantIdentificationException(
        'Error al procesar la respuesta. Intenta de nuevo.',
      );
    }
  }
}

class PlantIdentificationException implements Exception {
  final String message;
  const PlantIdentificationException(this.message);

  @override
  String toString() => message;
}
