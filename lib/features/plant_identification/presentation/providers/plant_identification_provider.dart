import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/claude_api_service.dart';
import '../../data/image_service.dart';
import '../../domain/identification_state.dart';

part 'plant_identification_provider.g.dart';

@riverpod
class PlantIdentification extends _$PlantIdentification {
  late final ImageService _imageService;
  late final ClaudeApiService _apiService;

  @override
  IdentificationState build() {
    _imageService = ImageService();
    _apiService = ClaudeApiService();
    return const IdentificationState.initial();
  }

  Future<void> identifyFromCamera() async {
    final picked = await _imageService.pickFromCamera();
    if (picked == null) return;
    await _identify(picked);
  }

  Future<void> identifyFromGallery() async {
    final picked = await _imageService.pickFromGallery();
    if (picked == null) return;
    await _identify(picked);
  }

  Future<void> _identify(PickedImage picked) async {
    state = IdentificationState.loading(picked.bytes);
    try {
      final base64 = _imageService.encodeToBase64(picked.bytes);
      final plantInfo = await _apiService.identifyPlant(
        base64Image: base64,
        mediaType: picked.mediaType,
      );
      state = IdentificationState.success(picked.bytes, plantInfo);
    } on PlantIdentificationException catch (e) {
      state = IdentificationState.error(picked.bytes, e.message);
    } catch (e) {
      state = IdentificationState.error(
        picked.bytes,
        'Error inesperado. Intenta de nuevo.',
      );
    }
  }

  void reset() {
    state = const IdentificationState.initial();
  }

  Future<void> retry() async {
    final currentState = state;
    switch (currentState) {
      case IdentificationError(:final imageBytes):
        // Re-pick not possible, so we need to store the picked image data
        // For retry, we re-send the same bytes
        state = IdentificationState.loading(imageBytes);
        try {
          final base64 = _imageService.encodeToBase64(imageBytes);
          // Default to jpeg for retry since we lost the original media type
          final plantInfo = await _apiService.identifyPlant(
            base64Image: base64,
            mediaType: 'image/jpeg',
          );
          state = IdentificationState.success(imageBytes, plantInfo);
        } on PlantIdentificationException catch (e) {
          state = IdentificationState.error(imageBytes, e.message);
        } catch (e) {
          state = IdentificationState.error(
            imageBytes,
            'Error inesperado. Intenta de nuevo.',
          );
        }
      default:
        break;
    }
  }
}
