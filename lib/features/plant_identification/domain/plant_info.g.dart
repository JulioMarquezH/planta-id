// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantInfoImpl _$$PlantInfoImplFromJson(Map<String, dynamic> json) =>
    _$PlantInfoImpl(
      commonName: json['common_name'] as String,
      scientificName: json['scientific_name'] as String,
      family: json['family'] as String,
      description: json['description'] as String,
      careInstructions: CareInstructions.fromJson(
          json['care_instructions'] as Map<String, dynamic>),
      climateInfo:
          ClimateInfo.fromJson(json['climate_info'] as Map<String, dynamic>),
      pestsAndDiseases: (json['pests_and_diseases'] as List<dynamic>)
          .map((e) => PestDisease.fromJson(e as Map<String, dynamic>))
          .toList(),
      funFacts:
          (json['fun_facts'] as List<dynamic>).map((e) => e as String).toList(),
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$PlantInfoImplToJson(_$PlantInfoImpl instance) =>
    <String, dynamic>{
      'common_name': instance.commonName,
      'scientific_name': instance.scientificName,
      'family': instance.family,
      'description': instance.description,
      'care_instructions': instance.careInstructions,
      'climate_info': instance.climateInfo,
      'pests_and_diseases': instance.pestsAndDiseases,
      'fun_facts': instance.funFacts,
      'confidence': instance.confidence,
    };

_$CareInstructionsImpl _$$CareInstructionsImplFromJson(
        Map<String, dynamic> json) =>
    _$CareInstructionsImpl(
      wateringFrequency: json['watering_frequency'] as String,
      sunlightNeeds: json['sunlight_needs'] as String,
      soilType: json['soil_type'] as String,
      temperatureRange: json['temperature_range'] as String,
      humidity: json['humidity'] as String,
      fertilizerSchedule: json['fertilizer_schedule'] as String,
      pruningTips: json['pruning_tips'] as String,
    );

Map<String, dynamic> _$$CareInstructionsImplToJson(
        _$CareInstructionsImpl instance) =>
    <String, dynamic>{
      'watering_frequency': instance.wateringFrequency,
      'sunlight_needs': instance.sunlightNeeds,
      'soil_type': instance.soilType,
      'temperature_range': instance.temperatureRange,
      'humidity': instance.humidity,
      'fertilizer_schedule': instance.fertilizerSchedule,
      'pruning_tips': instance.pruningTips,
    };

_$ClimateInfoImpl _$$ClimateInfoImplFromJson(Map<String, dynamic> json) =>
    _$ClimateInfoImpl(
      nativeRegion: json['native_region'] as String,
      hardinessZones: json['hardiness_zones'] as String,
      climatePreference: json['climate_preference'] as String,
      indoorOutdoor: json['indoor_outdoor'] as String,
    );

Map<String, dynamic> _$$ClimateInfoImplToJson(_$ClimateInfoImpl instance) =>
    <String, dynamic>{
      'native_region': instance.nativeRegion,
      'hardiness_zones': instance.hardinessZones,
      'climate_preference': instance.climatePreference,
      'indoor_outdoor': instance.indoorOutdoor,
    };

_$PestDiseaseImpl _$$PestDiseaseImplFromJson(Map<String, dynamic> json) =>
    _$PestDiseaseImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      symptoms: json['symptoms'] as String,
      treatment: json['treatment'] as String,
    );

Map<String, dynamic> _$$PestDiseaseImplToJson(_$PestDiseaseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'symptoms': instance.symptoms,
      'treatment': instance.treatment,
    };
