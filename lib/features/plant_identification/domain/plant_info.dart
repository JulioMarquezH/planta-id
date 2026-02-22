import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_info.freezed.dart';
part 'plant_info.g.dart';

@freezed
class PlantInfo with _$PlantInfo {
  const factory PlantInfo({
    @JsonKey(name: 'common_name') required String commonName,
    @JsonKey(name: 'scientific_name') required String scientificName,
    required String family,
    required String description,
    @JsonKey(name: 'care_instructions') required CareInstructions careInstructions,
    @JsonKey(name: 'climate_info') required ClimateInfo climateInfo,
    @JsonKey(name: 'pests_and_diseases') required List<PestDisease> pestsAndDiseases,
    @JsonKey(name: 'fun_facts') required List<String> funFacts,
    required double confidence,
  }) = _PlantInfo;

  factory PlantInfo.fromJson(Map<String, dynamic> json) =>
      _$PlantInfoFromJson(json);
}

@freezed
class CareInstructions with _$CareInstructions {
  const factory CareInstructions({
    @JsonKey(name: 'watering_frequency') required String wateringFrequency,
    @JsonKey(name: 'sunlight_needs') required String sunlightNeeds,
    @JsonKey(name: 'soil_type') required String soilType,
    @JsonKey(name: 'temperature_range') required String temperatureRange,
    required String humidity,
    @JsonKey(name: 'fertilizer_schedule') required String fertilizerSchedule,
    @JsonKey(name: 'pruning_tips') required String pruningTips,
  }) = _CareInstructions;

  factory CareInstructions.fromJson(Map<String, dynamic> json) =>
      _$CareInstructionsFromJson(json);
}

@freezed
class ClimateInfo with _$ClimateInfo {
  const factory ClimateInfo({
    @JsonKey(name: 'native_region') required String nativeRegion,
    @JsonKey(name: 'hardiness_zones') required String hardinessZones,
    @JsonKey(name: 'climate_preference') required String climatePreference,
    @JsonKey(name: 'indoor_outdoor') required String indoorOutdoor,
  }) = _ClimateInfo;

  factory ClimateInfo.fromJson(Map<String, dynamic> json) =>
      _$ClimateInfoFromJson(json);
}

@freezed
class PestDisease with _$PestDisease {
  const factory PestDisease({
    required String name,
    required String type,
    required String symptoms,
    required String treatment,
  }) = _PestDisease;

  factory PestDisease.fromJson(Map<String, dynamic> json) =>
      _$PestDiseaseFromJson(json);
}
