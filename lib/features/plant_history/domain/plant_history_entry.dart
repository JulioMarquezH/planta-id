import 'package:freezed_annotation/freezed_annotation.dart';

import '../../plant_identification/domain/plant_info.dart';

part 'plant_history_entry.freezed.dart';
part 'plant_history_entry.g.dart';

@freezed
class PlantHistoryEntry with _$PlantHistoryEntry {
  const factory PlantHistoryEntry({
    required String id,
    required PlantInfo plantInfo,
    required String imagePath,
    required DateTime identifiedAt,
    String? nickname,
  }) = _PlantHistoryEntry;

  factory PlantHistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$PlantHistoryEntryFromJson(json);
}
