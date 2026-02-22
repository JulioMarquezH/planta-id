import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/plant_identification/domain/plant_info.dart';
import '../../data/plant_history_repository.dart';
import '../../domain/plant_history_entry.dart';

part 'plant_history_provider.g.dart';

@riverpod
class PlantHistory extends _$PlantHistory {
  // Instanciado directamente para evitar LateInitializationError
  // cuando Riverpod llama build() más de una vez en el mismo notifier
  final _repository = PlantHistoryRepository();

  @override
  Future<List<PlantHistoryEntry>> build() async {
    return _repository.getAll();
  }

  Future<PlantHistoryEntry> addEntry({
    required Uint8List imageBytes,
    required PlantInfo plantInfo,
  }) async {
    final entry = await _repository.saveEntry(
      imageBytes: imageBytes,
      plantInfo: plantInfo,
    );
    ref.invalidateSelf();
    return entry;
  }

  Future<void> rename(String id, String nickname) async {
    await _repository.updateNickname(id, nickname);
    ref.invalidateSelf();
  }

  Future<void> delete(String id) async {
    await _repository.deleteEntry(id);
    ref.invalidateSelf();
  }
}
