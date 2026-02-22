// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_history_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantHistoryEntryImpl _$$PlantHistoryEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$PlantHistoryEntryImpl(
      id: json['id'] as String,
      plantInfo: PlantInfo.fromJson(json['plantInfo'] as Map<String, dynamic>),
      imagePath: json['imagePath'] as String,
      identifiedAt: DateTime.parse(json['identifiedAt'] as String),
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$PlantHistoryEntryImplToJson(
        _$PlantHistoryEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plantInfo': instance.plantInfo,
      'imagePath': instance.imagePath,
      'identifiedAt': instance.identifiedAt.toIso8601String(),
      'nickname': instance.nickname,
    };
