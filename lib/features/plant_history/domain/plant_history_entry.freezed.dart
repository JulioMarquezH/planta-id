// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantHistoryEntry _$PlantHistoryEntryFromJson(Map<String, dynamic> json) {
  return _PlantHistoryEntry.fromJson(json);
}

/// @nodoc
mixin _$PlantHistoryEntry {
  String get id => throw _privateConstructorUsedError;
  PlantInfo get plantInfo => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  DateTime get identifiedAt => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;

  /// Serializes this PlantHistoryEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantHistoryEntryCopyWith<PlantHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantHistoryEntryCopyWith<$Res> {
  factory $PlantHistoryEntryCopyWith(
          PlantHistoryEntry value, $Res Function(PlantHistoryEntry) then) =
      _$PlantHistoryEntryCopyWithImpl<$Res, PlantHistoryEntry>;
  @useResult
  $Res call(
      {String id,
      PlantInfo plantInfo,
      String imagePath,
      DateTime identifiedAt,
      String? nickname});

  $PlantInfoCopyWith<$Res> get plantInfo;
}

/// @nodoc
class _$PlantHistoryEntryCopyWithImpl<$Res, $Val extends PlantHistoryEntry>
    implements $PlantHistoryEntryCopyWith<$Res> {
  _$PlantHistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantInfo = null,
    Object? imagePath = null,
    Object? identifiedAt = null,
    Object? nickname = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plantInfo: null == plantInfo
          ? _value.plantInfo
          : plantInfo // ignore: cast_nullable_to_non_nullable
              as PlantInfo,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      identifiedAt: null == identifiedAt
          ? _value.identifiedAt
          : identifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantInfoCopyWith<$Res> get plantInfo {
    return $PlantInfoCopyWith<$Res>(_value.plantInfo, (value) {
      return _then(_value.copyWith(plantInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantHistoryEntryImplCopyWith<$Res>
    implements $PlantHistoryEntryCopyWith<$Res> {
  factory _$$PlantHistoryEntryImplCopyWith(_$PlantHistoryEntryImpl value,
          $Res Function(_$PlantHistoryEntryImpl) then) =
      __$$PlantHistoryEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      PlantInfo plantInfo,
      String imagePath,
      DateTime identifiedAt,
      String? nickname});

  @override
  $PlantInfoCopyWith<$Res> get plantInfo;
}

/// @nodoc
class __$$PlantHistoryEntryImplCopyWithImpl<$Res>
    extends _$PlantHistoryEntryCopyWithImpl<$Res, _$PlantHistoryEntryImpl>
    implements _$$PlantHistoryEntryImplCopyWith<$Res> {
  __$$PlantHistoryEntryImplCopyWithImpl(_$PlantHistoryEntryImpl _value,
      $Res Function(_$PlantHistoryEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantInfo = null,
    Object? imagePath = null,
    Object? identifiedAt = null,
    Object? nickname = freezed,
  }) {
    return _then(_$PlantHistoryEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plantInfo: null == plantInfo
          ? _value.plantInfo
          : plantInfo // ignore: cast_nullable_to_non_nullable
              as PlantInfo,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      identifiedAt: null == identifiedAt
          ? _value.identifiedAt
          : identifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantHistoryEntryImpl implements _PlantHistoryEntry {
  const _$PlantHistoryEntryImpl(
      {required this.id,
      required this.plantInfo,
      required this.imagePath,
      required this.identifiedAt,
      this.nickname});

  factory _$PlantHistoryEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantHistoryEntryImplFromJson(json);

  @override
  final String id;
  @override
  final PlantInfo plantInfo;
  @override
  final String imagePath;
  @override
  final DateTime identifiedAt;
  @override
  final String? nickname;

  @override
  String toString() {
    return 'PlantHistoryEntry(id: $id, plantInfo: $plantInfo, imagePath: $imagePath, identifiedAt: $identifiedAt, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantHistoryEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plantInfo, plantInfo) ||
                other.plantInfo == plantInfo) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.identifiedAt, identifiedAt) ||
                other.identifiedAt == identifiedAt) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, plantInfo, imagePath, identifiedAt, nickname);

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantHistoryEntryImplCopyWith<_$PlantHistoryEntryImpl> get copyWith =>
      __$$PlantHistoryEntryImplCopyWithImpl<_$PlantHistoryEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantHistoryEntryImplToJson(
      this,
    );
  }
}

abstract class _PlantHistoryEntry implements PlantHistoryEntry {
  const factory _PlantHistoryEntry(
      {required final String id,
      required final PlantInfo plantInfo,
      required final String imagePath,
      required final DateTime identifiedAt,
      final String? nickname}) = _$PlantHistoryEntryImpl;

  factory _PlantHistoryEntry.fromJson(Map<String, dynamic> json) =
      _$PlantHistoryEntryImpl.fromJson;

  @override
  String get id;
  @override
  PlantInfo get plantInfo;
  @override
  String get imagePath;
  @override
  DateTime get identifiedAt;
  @override
  String? get nickname;

  /// Create a copy of PlantHistoryEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantHistoryEntryImplCopyWith<_$PlantHistoryEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
