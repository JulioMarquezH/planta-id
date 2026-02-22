// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantInfo _$PlantInfoFromJson(Map<String, dynamic> json) {
  return _PlantInfo.fromJson(json);
}

/// @nodoc
mixin _$PlantInfo {
  @JsonKey(name: 'common_name')
  String get commonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'scientific_name')
  String get scientificName => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'care_instructions')
  CareInstructions get careInstructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'climate_info')
  ClimateInfo get climateInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'pests_and_diseases')
  List<PestDisease> get pestsAndDiseases => throw _privateConstructorUsedError;
  @JsonKey(name: 'fun_facts')
  List<String> get funFacts => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this PlantInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantInfoCopyWith<PlantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantInfoCopyWith<$Res> {
  factory $PlantInfoCopyWith(PlantInfo value, $Res Function(PlantInfo) then) =
      _$PlantInfoCopyWithImpl<$Res, PlantInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'common_name') String commonName,
      @JsonKey(name: 'scientific_name') String scientificName,
      String family,
      String description,
      @JsonKey(name: 'care_instructions') CareInstructions careInstructions,
      @JsonKey(name: 'climate_info') ClimateInfo climateInfo,
      @JsonKey(name: 'pests_and_diseases') List<PestDisease> pestsAndDiseases,
      @JsonKey(name: 'fun_facts') List<String> funFacts,
      double confidence});

  $CareInstructionsCopyWith<$Res> get careInstructions;
  $ClimateInfoCopyWith<$Res> get climateInfo;
}

/// @nodoc
class _$PlantInfoCopyWithImpl<$Res, $Val extends PlantInfo>
    implements $PlantInfoCopyWith<$Res> {
  _$PlantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonName = null,
    Object? scientificName = null,
    Object? family = null,
    Object? description = null,
    Object? careInstructions = null,
    Object? climateInfo = null,
    Object? pestsAndDiseases = null,
    Object? funFacts = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      careInstructions: null == careInstructions
          ? _value.careInstructions
          : careInstructions // ignore: cast_nullable_to_non_nullable
              as CareInstructions,
      climateInfo: null == climateInfo
          ? _value.climateInfo
          : climateInfo // ignore: cast_nullable_to_non_nullable
              as ClimateInfo,
      pestsAndDiseases: null == pestsAndDiseases
          ? _value.pestsAndDiseases
          : pestsAndDiseases // ignore: cast_nullable_to_non_nullable
              as List<PestDisease>,
      funFacts: null == funFacts
          ? _value.funFacts
          : funFacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareInstructionsCopyWith<$Res> get careInstructions {
    return $CareInstructionsCopyWith<$Res>(_value.careInstructions, (value) {
      return _then(_value.copyWith(careInstructions: value) as $Val);
    });
  }

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClimateInfoCopyWith<$Res> get climateInfo {
    return $ClimateInfoCopyWith<$Res>(_value.climateInfo, (value) {
      return _then(_value.copyWith(climateInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantInfoImplCopyWith<$Res>
    implements $PlantInfoCopyWith<$Res> {
  factory _$$PlantInfoImplCopyWith(
          _$PlantInfoImpl value, $Res Function(_$PlantInfoImpl) then) =
      __$$PlantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'common_name') String commonName,
      @JsonKey(name: 'scientific_name') String scientificName,
      String family,
      String description,
      @JsonKey(name: 'care_instructions') CareInstructions careInstructions,
      @JsonKey(name: 'climate_info') ClimateInfo climateInfo,
      @JsonKey(name: 'pests_and_diseases') List<PestDisease> pestsAndDiseases,
      @JsonKey(name: 'fun_facts') List<String> funFacts,
      double confidence});

  @override
  $CareInstructionsCopyWith<$Res> get careInstructions;
  @override
  $ClimateInfoCopyWith<$Res> get climateInfo;
}

/// @nodoc
class __$$PlantInfoImplCopyWithImpl<$Res>
    extends _$PlantInfoCopyWithImpl<$Res, _$PlantInfoImpl>
    implements _$$PlantInfoImplCopyWith<$Res> {
  __$$PlantInfoImplCopyWithImpl(
      _$PlantInfoImpl _value, $Res Function(_$PlantInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonName = null,
    Object? scientificName = null,
    Object? family = null,
    Object? description = null,
    Object? careInstructions = null,
    Object? climateInfo = null,
    Object? pestsAndDiseases = null,
    Object? funFacts = null,
    Object? confidence = null,
  }) {
    return _then(_$PlantInfoImpl(
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      careInstructions: null == careInstructions
          ? _value.careInstructions
          : careInstructions // ignore: cast_nullable_to_non_nullable
              as CareInstructions,
      climateInfo: null == climateInfo
          ? _value.climateInfo
          : climateInfo // ignore: cast_nullable_to_non_nullable
              as ClimateInfo,
      pestsAndDiseases: null == pestsAndDiseases
          ? _value._pestsAndDiseases
          : pestsAndDiseases // ignore: cast_nullable_to_non_nullable
              as List<PestDisease>,
      funFacts: null == funFacts
          ? _value._funFacts
          : funFacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantInfoImpl implements _PlantInfo {
  const _$PlantInfoImpl(
      {@JsonKey(name: 'common_name') required this.commonName,
      @JsonKey(name: 'scientific_name') required this.scientificName,
      required this.family,
      required this.description,
      @JsonKey(name: 'care_instructions') required this.careInstructions,
      @JsonKey(name: 'climate_info') required this.climateInfo,
      @JsonKey(name: 'pests_and_diseases')
      required final List<PestDisease> pestsAndDiseases,
      @JsonKey(name: 'fun_facts') required final List<String> funFacts,
      required this.confidence})
      : _pestsAndDiseases = pestsAndDiseases,
        _funFacts = funFacts;

  factory _$PlantInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantInfoImplFromJson(json);

  @override
  @JsonKey(name: 'common_name')
  final String commonName;
  @override
  @JsonKey(name: 'scientific_name')
  final String scientificName;
  @override
  final String family;
  @override
  final String description;
  @override
  @JsonKey(name: 'care_instructions')
  final CareInstructions careInstructions;
  @override
  @JsonKey(name: 'climate_info')
  final ClimateInfo climateInfo;
  final List<PestDisease> _pestsAndDiseases;
  @override
  @JsonKey(name: 'pests_and_diseases')
  List<PestDisease> get pestsAndDiseases {
    if (_pestsAndDiseases is EqualUnmodifiableListView)
      return _pestsAndDiseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pestsAndDiseases);
  }

  final List<String> _funFacts;
  @override
  @JsonKey(name: 'fun_facts')
  List<String> get funFacts {
    if (_funFacts is EqualUnmodifiableListView) return _funFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_funFacts);
  }

  @override
  final double confidence;

  @override
  String toString() {
    return 'PlantInfo(commonName: $commonName, scientificName: $scientificName, family: $family, description: $description, careInstructions: $careInstructions, climateInfo: $climateInfo, pestsAndDiseases: $pestsAndDiseases, funFacts: $funFacts, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantInfoImpl &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.careInstructions, careInstructions) ||
                other.careInstructions == careInstructions) &&
            (identical(other.climateInfo, climateInfo) ||
                other.climateInfo == climateInfo) &&
            const DeepCollectionEquality()
                .equals(other._pestsAndDiseases, _pestsAndDiseases) &&
            const DeepCollectionEquality().equals(other._funFacts, _funFacts) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commonName,
      scientificName,
      family,
      description,
      careInstructions,
      climateInfo,
      const DeepCollectionEquality().hash(_pestsAndDiseases),
      const DeepCollectionEquality().hash(_funFacts),
      confidence);

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantInfoImplCopyWith<_$PlantInfoImpl> get copyWith =>
      __$$PlantInfoImplCopyWithImpl<_$PlantInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantInfoImplToJson(
      this,
    );
  }
}

abstract class _PlantInfo implements PlantInfo {
  const factory _PlantInfo(
      {@JsonKey(name: 'common_name') required final String commonName,
      @JsonKey(name: 'scientific_name') required final String scientificName,
      required final String family,
      required final String description,
      @JsonKey(name: 'care_instructions')
      required final CareInstructions careInstructions,
      @JsonKey(name: 'climate_info') required final ClimateInfo climateInfo,
      @JsonKey(name: 'pests_and_diseases')
      required final List<PestDisease> pestsAndDiseases,
      @JsonKey(name: 'fun_facts') required final List<String> funFacts,
      required final double confidence}) = _$PlantInfoImpl;

  factory _PlantInfo.fromJson(Map<String, dynamic> json) =
      _$PlantInfoImpl.fromJson;

  @override
  @JsonKey(name: 'common_name')
  String get commonName;
  @override
  @JsonKey(name: 'scientific_name')
  String get scientificName;
  @override
  String get family;
  @override
  String get description;
  @override
  @JsonKey(name: 'care_instructions')
  CareInstructions get careInstructions;
  @override
  @JsonKey(name: 'climate_info')
  ClimateInfo get climateInfo;
  @override
  @JsonKey(name: 'pests_and_diseases')
  List<PestDisease> get pestsAndDiseases;
  @override
  @JsonKey(name: 'fun_facts')
  List<String> get funFacts;
  @override
  double get confidence;

  /// Create a copy of PlantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantInfoImplCopyWith<_$PlantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CareInstructions _$CareInstructionsFromJson(Map<String, dynamic> json) {
  return _CareInstructions.fromJson(json);
}

/// @nodoc
mixin _$CareInstructions {
  @JsonKey(name: 'watering_frequency')
  String get wateringFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunlight_needs')
  String get sunlightNeeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_type')
  String get soilType => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_range')
  String get temperatureRange => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizer_schedule')
  String get fertilizerSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'pruning_tips')
  String get pruningTips => throw _privateConstructorUsedError;

  /// Serializes this CareInstructions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareInstructionsCopyWith<CareInstructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareInstructionsCopyWith<$Res> {
  factory $CareInstructionsCopyWith(
          CareInstructions value, $Res Function(CareInstructions) then) =
      _$CareInstructionsCopyWithImpl<$Res, CareInstructions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'watering_frequency') String wateringFrequency,
      @JsonKey(name: 'sunlight_needs') String sunlightNeeds,
      @JsonKey(name: 'soil_type') String soilType,
      @JsonKey(name: 'temperature_range') String temperatureRange,
      String humidity,
      @JsonKey(name: 'fertilizer_schedule') String fertilizerSchedule,
      @JsonKey(name: 'pruning_tips') String pruningTips});
}

/// @nodoc
class _$CareInstructionsCopyWithImpl<$Res, $Val extends CareInstructions>
    implements $CareInstructionsCopyWith<$Res> {
  _$CareInstructionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareInstructions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wateringFrequency = null,
    Object? sunlightNeeds = null,
    Object? soilType = null,
    Object? temperatureRange = null,
    Object? humidity = null,
    Object? fertilizerSchedule = null,
    Object? pruningTips = null,
  }) {
    return _then(_value.copyWith(
      wateringFrequency: null == wateringFrequency
          ? _value.wateringFrequency
          : wateringFrequency // ignore: cast_nullable_to_non_nullable
              as String,
      sunlightNeeds: null == sunlightNeeds
          ? _value.sunlightNeeds
          : sunlightNeeds // ignore: cast_nullable_to_non_nullable
              as String,
      soilType: null == soilType
          ? _value.soilType
          : soilType // ignore: cast_nullable_to_non_nullable
              as String,
      temperatureRange: null == temperatureRange
          ? _value.temperatureRange
          : temperatureRange // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      fertilizerSchedule: null == fertilizerSchedule
          ? _value.fertilizerSchedule
          : fertilizerSchedule // ignore: cast_nullable_to_non_nullable
              as String,
      pruningTips: null == pruningTips
          ? _value.pruningTips
          : pruningTips // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareInstructionsImplCopyWith<$Res>
    implements $CareInstructionsCopyWith<$Res> {
  factory _$$CareInstructionsImplCopyWith(_$CareInstructionsImpl value,
          $Res Function(_$CareInstructionsImpl) then) =
      __$$CareInstructionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'watering_frequency') String wateringFrequency,
      @JsonKey(name: 'sunlight_needs') String sunlightNeeds,
      @JsonKey(name: 'soil_type') String soilType,
      @JsonKey(name: 'temperature_range') String temperatureRange,
      String humidity,
      @JsonKey(name: 'fertilizer_schedule') String fertilizerSchedule,
      @JsonKey(name: 'pruning_tips') String pruningTips});
}

/// @nodoc
class __$$CareInstructionsImplCopyWithImpl<$Res>
    extends _$CareInstructionsCopyWithImpl<$Res, _$CareInstructionsImpl>
    implements _$$CareInstructionsImplCopyWith<$Res> {
  __$$CareInstructionsImplCopyWithImpl(_$CareInstructionsImpl _value,
      $Res Function(_$CareInstructionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareInstructions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wateringFrequency = null,
    Object? sunlightNeeds = null,
    Object? soilType = null,
    Object? temperatureRange = null,
    Object? humidity = null,
    Object? fertilizerSchedule = null,
    Object? pruningTips = null,
  }) {
    return _then(_$CareInstructionsImpl(
      wateringFrequency: null == wateringFrequency
          ? _value.wateringFrequency
          : wateringFrequency // ignore: cast_nullable_to_non_nullable
              as String,
      sunlightNeeds: null == sunlightNeeds
          ? _value.sunlightNeeds
          : sunlightNeeds // ignore: cast_nullable_to_non_nullable
              as String,
      soilType: null == soilType
          ? _value.soilType
          : soilType // ignore: cast_nullable_to_non_nullable
              as String,
      temperatureRange: null == temperatureRange
          ? _value.temperatureRange
          : temperatureRange // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      fertilizerSchedule: null == fertilizerSchedule
          ? _value.fertilizerSchedule
          : fertilizerSchedule // ignore: cast_nullable_to_non_nullable
              as String,
      pruningTips: null == pruningTips
          ? _value.pruningTips
          : pruningTips // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareInstructionsImpl implements _CareInstructions {
  const _$CareInstructionsImpl(
      {@JsonKey(name: 'watering_frequency') required this.wateringFrequency,
      @JsonKey(name: 'sunlight_needs') required this.sunlightNeeds,
      @JsonKey(name: 'soil_type') required this.soilType,
      @JsonKey(name: 'temperature_range') required this.temperatureRange,
      required this.humidity,
      @JsonKey(name: 'fertilizer_schedule') required this.fertilizerSchedule,
      @JsonKey(name: 'pruning_tips') required this.pruningTips});

  factory _$CareInstructionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareInstructionsImplFromJson(json);

  @override
  @JsonKey(name: 'watering_frequency')
  final String wateringFrequency;
  @override
  @JsonKey(name: 'sunlight_needs')
  final String sunlightNeeds;
  @override
  @JsonKey(name: 'soil_type')
  final String soilType;
  @override
  @JsonKey(name: 'temperature_range')
  final String temperatureRange;
  @override
  final String humidity;
  @override
  @JsonKey(name: 'fertilizer_schedule')
  final String fertilizerSchedule;
  @override
  @JsonKey(name: 'pruning_tips')
  final String pruningTips;

  @override
  String toString() {
    return 'CareInstructions(wateringFrequency: $wateringFrequency, sunlightNeeds: $sunlightNeeds, soilType: $soilType, temperatureRange: $temperatureRange, humidity: $humidity, fertilizerSchedule: $fertilizerSchedule, pruningTips: $pruningTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareInstructionsImpl &&
            (identical(other.wateringFrequency, wateringFrequency) ||
                other.wateringFrequency == wateringFrequency) &&
            (identical(other.sunlightNeeds, sunlightNeeds) ||
                other.sunlightNeeds == sunlightNeeds) &&
            (identical(other.soilType, soilType) ||
                other.soilType == soilType) &&
            (identical(other.temperatureRange, temperatureRange) ||
                other.temperatureRange == temperatureRange) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.fertilizerSchedule, fertilizerSchedule) ||
                other.fertilizerSchedule == fertilizerSchedule) &&
            (identical(other.pruningTips, pruningTips) ||
                other.pruningTips == pruningTips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wateringFrequency, sunlightNeeds,
      soilType, temperatureRange, humidity, fertilizerSchedule, pruningTips);

  /// Create a copy of CareInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareInstructionsImplCopyWith<_$CareInstructionsImpl> get copyWith =>
      __$$CareInstructionsImplCopyWithImpl<_$CareInstructionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareInstructionsImplToJson(
      this,
    );
  }
}

abstract class _CareInstructions implements CareInstructions {
  const factory _CareInstructions(
          {@JsonKey(name: 'watering_frequency')
          required final String wateringFrequency,
          @JsonKey(name: 'sunlight_needs') required final String sunlightNeeds,
          @JsonKey(name: 'soil_type') required final String soilType,
          @JsonKey(name: 'temperature_range')
          required final String temperatureRange,
          required final String humidity,
          @JsonKey(name: 'fertilizer_schedule')
          required final String fertilizerSchedule,
          @JsonKey(name: 'pruning_tips') required final String pruningTips}) =
      _$CareInstructionsImpl;

  factory _CareInstructions.fromJson(Map<String, dynamic> json) =
      _$CareInstructionsImpl.fromJson;

  @override
  @JsonKey(name: 'watering_frequency')
  String get wateringFrequency;
  @override
  @JsonKey(name: 'sunlight_needs')
  String get sunlightNeeds;
  @override
  @JsonKey(name: 'soil_type')
  String get soilType;
  @override
  @JsonKey(name: 'temperature_range')
  String get temperatureRange;
  @override
  String get humidity;
  @override
  @JsonKey(name: 'fertilizer_schedule')
  String get fertilizerSchedule;
  @override
  @JsonKey(name: 'pruning_tips')
  String get pruningTips;

  /// Create a copy of CareInstructions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareInstructionsImplCopyWith<_$CareInstructionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClimateInfo _$ClimateInfoFromJson(Map<String, dynamic> json) {
  return _ClimateInfo.fromJson(json);
}

/// @nodoc
mixin _$ClimateInfo {
  @JsonKey(name: 'native_region')
  String get nativeRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'hardiness_zones')
  String get hardinessZones => throw _privateConstructorUsedError;
  @JsonKey(name: 'climate_preference')
  String get climatePreference => throw _privateConstructorUsedError;
  @JsonKey(name: 'indoor_outdoor')
  String get indoorOutdoor => throw _privateConstructorUsedError;

  /// Serializes this ClimateInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClimateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClimateInfoCopyWith<ClimateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClimateInfoCopyWith<$Res> {
  factory $ClimateInfoCopyWith(
          ClimateInfo value, $Res Function(ClimateInfo) then) =
      _$ClimateInfoCopyWithImpl<$Res, ClimateInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'native_region') String nativeRegion,
      @JsonKey(name: 'hardiness_zones') String hardinessZones,
      @JsonKey(name: 'climate_preference') String climatePreference,
      @JsonKey(name: 'indoor_outdoor') String indoorOutdoor});
}

/// @nodoc
class _$ClimateInfoCopyWithImpl<$Res, $Val extends ClimateInfo>
    implements $ClimateInfoCopyWith<$Res> {
  _$ClimateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClimateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeRegion = null,
    Object? hardinessZones = null,
    Object? climatePreference = null,
    Object? indoorOutdoor = null,
  }) {
    return _then(_value.copyWith(
      nativeRegion: null == nativeRegion
          ? _value.nativeRegion
          : nativeRegion // ignore: cast_nullable_to_non_nullable
              as String,
      hardinessZones: null == hardinessZones
          ? _value.hardinessZones
          : hardinessZones // ignore: cast_nullable_to_non_nullable
              as String,
      climatePreference: null == climatePreference
          ? _value.climatePreference
          : climatePreference // ignore: cast_nullable_to_non_nullable
              as String,
      indoorOutdoor: null == indoorOutdoor
          ? _value.indoorOutdoor
          : indoorOutdoor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClimateInfoImplCopyWith<$Res>
    implements $ClimateInfoCopyWith<$Res> {
  factory _$$ClimateInfoImplCopyWith(
          _$ClimateInfoImpl value, $Res Function(_$ClimateInfoImpl) then) =
      __$$ClimateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'native_region') String nativeRegion,
      @JsonKey(name: 'hardiness_zones') String hardinessZones,
      @JsonKey(name: 'climate_preference') String climatePreference,
      @JsonKey(name: 'indoor_outdoor') String indoorOutdoor});
}

/// @nodoc
class __$$ClimateInfoImplCopyWithImpl<$Res>
    extends _$ClimateInfoCopyWithImpl<$Res, _$ClimateInfoImpl>
    implements _$$ClimateInfoImplCopyWith<$Res> {
  __$$ClimateInfoImplCopyWithImpl(
      _$ClimateInfoImpl _value, $Res Function(_$ClimateInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClimateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeRegion = null,
    Object? hardinessZones = null,
    Object? climatePreference = null,
    Object? indoorOutdoor = null,
  }) {
    return _then(_$ClimateInfoImpl(
      nativeRegion: null == nativeRegion
          ? _value.nativeRegion
          : nativeRegion // ignore: cast_nullable_to_non_nullable
              as String,
      hardinessZones: null == hardinessZones
          ? _value.hardinessZones
          : hardinessZones // ignore: cast_nullable_to_non_nullable
              as String,
      climatePreference: null == climatePreference
          ? _value.climatePreference
          : climatePreference // ignore: cast_nullable_to_non_nullable
              as String,
      indoorOutdoor: null == indoorOutdoor
          ? _value.indoorOutdoor
          : indoorOutdoor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClimateInfoImpl implements _ClimateInfo {
  const _$ClimateInfoImpl(
      {@JsonKey(name: 'native_region') required this.nativeRegion,
      @JsonKey(name: 'hardiness_zones') required this.hardinessZones,
      @JsonKey(name: 'climate_preference') required this.climatePreference,
      @JsonKey(name: 'indoor_outdoor') required this.indoorOutdoor});

  factory _$ClimateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClimateInfoImplFromJson(json);

  @override
  @JsonKey(name: 'native_region')
  final String nativeRegion;
  @override
  @JsonKey(name: 'hardiness_zones')
  final String hardinessZones;
  @override
  @JsonKey(name: 'climate_preference')
  final String climatePreference;
  @override
  @JsonKey(name: 'indoor_outdoor')
  final String indoorOutdoor;

  @override
  String toString() {
    return 'ClimateInfo(nativeRegion: $nativeRegion, hardinessZones: $hardinessZones, climatePreference: $climatePreference, indoorOutdoor: $indoorOutdoor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClimateInfoImpl &&
            (identical(other.nativeRegion, nativeRegion) ||
                other.nativeRegion == nativeRegion) &&
            (identical(other.hardinessZones, hardinessZones) ||
                other.hardinessZones == hardinessZones) &&
            (identical(other.climatePreference, climatePreference) ||
                other.climatePreference == climatePreference) &&
            (identical(other.indoorOutdoor, indoorOutdoor) ||
                other.indoorOutdoor == indoorOutdoor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nativeRegion, hardinessZones,
      climatePreference, indoorOutdoor);

  /// Create a copy of ClimateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClimateInfoImplCopyWith<_$ClimateInfoImpl> get copyWith =>
      __$$ClimateInfoImplCopyWithImpl<_$ClimateInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClimateInfoImplToJson(
      this,
    );
  }
}

abstract class _ClimateInfo implements ClimateInfo {
  const factory _ClimateInfo(
      {@JsonKey(name: 'native_region') required final String nativeRegion,
      @JsonKey(name: 'hardiness_zones') required final String hardinessZones,
      @JsonKey(name: 'climate_preference')
      required final String climatePreference,
      @JsonKey(name: 'indoor_outdoor')
      required final String indoorOutdoor}) = _$ClimateInfoImpl;

  factory _ClimateInfo.fromJson(Map<String, dynamic> json) =
      _$ClimateInfoImpl.fromJson;

  @override
  @JsonKey(name: 'native_region')
  String get nativeRegion;
  @override
  @JsonKey(name: 'hardiness_zones')
  String get hardinessZones;
  @override
  @JsonKey(name: 'climate_preference')
  String get climatePreference;
  @override
  @JsonKey(name: 'indoor_outdoor')
  String get indoorOutdoor;

  /// Create a copy of ClimateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClimateInfoImplCopyWith<_$ClimateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PestDisease _$PestDiseaseFromJson(Map<String, dynamic> json) {
  return _PestDisease.fromJson(json);
}

/// @nodoc
mixin _$PestDisease {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get symptoms => throw _privateConstructorUsedError;
  String get treatment => throw _privateConstructorUsedError;

  /// Serializes this PestDisease to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PestDisease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PestDiseaseCopyWith<PestDisease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PestDiseaseCopyWith<$Res> {
  factory $PestDiseaseCopyWith(
          PestDisease value, $Res Function(PestDisease) then) =
      _$PestDiseaseCopyWithImpl<$Res, PestDisease>;
  @useResult
  $Res call({String name, String type, String symptoms, String treatment});
}

/// @nodoc
class _$PestDiseaseCopyWithImpl<$Res, $Val extends PestDisease>
    implements $PestDiseaseCopyWith<$Res> {
  _$PestDiseaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PestDisease
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? symptoms = null,
    Object? treatment = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PestDiseaseImplCopyWith<$Res>
    implements $PestDiseaseCopyWith<$Res> {
  factory _$$PestDiseaseImplCopyWith(
          _$PestDiseaseImpl value, $Res Function(_$PestDiseaseImpl) then) =
      __$$PestDiseaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, String symptoms, String treatment});
}

/// @nodoc
class __$$PestDiseaseImplCopyWithImpl<$Res>
    extends _$PestDiseaseCopyWithImpl<$Res, _$PestDiseaseImpl>
    implements _$$PestDiseaseImplCopyWith<$Res> {
  __$$PestDiseaseImplCopyWithImpl(
      _$PestDiseaseImpl _value, $Res Function(_$PestDiseaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PestDisease
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? symptoms = null,
    Object? treatment = null,
  }) {
    return _then(_$PestDiseaseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PestDiseaseImpl implements _PestDisease {
  const _$PestDiseaseImpl(
      {required this.name,
      required this.type,
      required this.symptoms,
      required this.treatment});

  factory _$PestDiseaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PestDiseaseImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String symptoms;
  @override
  final String treatment;

  @override
  String toString() {
    return 'PestDisease(name: $name, type: $type, symptoms: $symptoms, treatment: $treatment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PestDiseaseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.symptoms, symptoms) ||
                other.symptoms == symptoms) &&
            (identical(other.treatment, treatment) ||
                other.treatment == treatment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, symptoms, treatment);

  /// Create a copy of PestDisease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PestDiseaseImplCopyWith<_$PestDiseaseImpl> get copyWith =>
      __$$PestDiseaseImplCopyWithImpl<_$PestDiseaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PestDiseaseImplToJson(
      this,
    );
  }
}

abstract class _PestDisease implements PestDisease {
  const factory _PestDisease(
      {required final String name,
      required final String type,
      required final String symptoms,
      required final String treatment}) = _$PestDiseaseImpl;

  factory _PestDisease.fromJson(Map<String, dynamic> json) =
      _$PestDiseaseImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get symptoms;
  @override
  String get treatment;

  /// Create a copy of PestDisease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PestDiseaseImplCopyWith<_$PestDiseaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
