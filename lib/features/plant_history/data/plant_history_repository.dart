import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../plant_identification/domain/plant_info.dart';
import '../domain/plant_history_entry.dart';

class PlantHistoryRepository {
  static const _storageKey = 'plant_history';
  static const _uuid = Uuid();

  Future<Directory> _getImagesDir() async {
    final dir = await getApplicationDocumentsDirectory();
    final imagesDir = Directory('${dir.path}/plant_images');
    if (!await imagesDir.exists()) {
      await imagesDir.create(recursive: true);
    }
    return imagesDir;
  }

  Future<List<PlantHistoryEntry>> getAll() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStr = prefs.getString(_storageKey);
    if (jsonStr == null) return [];

    final List<dynamic> jsonList = jsonDecode(jsonStr);
    final entries = jsonList
        .map((e) => PlantHistoryEntry.fromJson(e as Map<String, dynamic>))
        .toList();

    // Ordenar de más reciente a más antiguo
    entries.sort((a, b) => b.identifiedAt.compareTo(a.identifiedAt));
    return entries;
  }

  Future<PlantHistoryEntry> saveEntry({
    required Uint8List imageBytes,
    required PlantInfo plantInfo,
  }) async {
    final id = _uuid.v4();
    final imagesDir = await _getImagesDir();
    final imagePath = '${imagesDir.path}/$id.jpg';

    // Guardar imagen como archivo
    await File(imagePath).writeAsBytes(imageBytes);

    final entry = PlantHistoryEntry(
      id: id,
      plantInfo: plantInfo,
      imagePath: imagePath,
      identifiedAt: DateTime.now(),
    );

    // Leer historial actual y agregar nueva entrada
    final entries = await getAll();
    entries.insert(0, entry);
    await _saveList(entries);

    return entry;
  }

  Future<void> updateNickname(String id, String nickname) async {
    final entries = await getAll();
    final index = entries.indexWhere((e) => e.id == id);
    if (index == -1) return;

    entries[index] = entries[index].copyWith(nickname: nickname.trim().isEmpty ? null : nickname.trim());
    await _saveList(entries);
  }

  Future<void> deleteEntry(String id) async {
    final entries = await getAll();
    final entry = entries.firstWhere((e) => e.id == id, orElse: () => throw Exception('Not found'));

    // Borrar archivo de imagen
    final imageFile = File(entry.imagePath);
    if (await imageFile.exists()) {
      await imageFile.delete();
    }

    entries.removeWhere((e) => e.id == id);
    await _saveList(entries);
  }

  Future<void> _saveList(List<PlantHistoryEntry> entries) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStr = jsonEncode(entries.map((e) => e.toJson()).toList());
    await prefs.setString(_storageKey, jsonStr);
  }
}
