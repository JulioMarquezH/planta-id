// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdentificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentificationStateCopyWith<$Res> {
  factory $IdentificationStateCopyWith(
          IdentificationState value, $Res Function(IdentificationState) then) =
      _$IdentificationStateCopyWithImpl<$Res, IdentificationState>;
}

/// @nodoc
class _$IdentificationStateCopyWithImpl<$Res, $Val extends IdentificationState>
    implements $IdentificationStateCopyWith<$Res> {
  _$IdentificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdentificationInitialImplCopyWith<$Res> {
  factory _$$IdentificationInitialImplCopyWith(
          _$IdentificationInitialImpl value,
          $Res Function(_$IdentificationInitialImpl) then) =
      __$$IdentificationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdentificationInitialImplCopyWithImpl<$Res>
    extends _$IdentificationStateCopyWithImpl<$Res, _$IdentificationInitialImpl>
    implements _$$IdentificationInitialImplCopyWith<$Res> {
  __$$IdentificationInitialImplCopyWithImpl(_$IdentificationInitialImpl _value,
      $Res Function(_$IdentificationInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdentificationInitialImpl implements IdentificationInitial {
  const _$IdentificationInitialImpl();

  @override
  String toString() {
    return 'IdentificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentificationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class IdentificationInitial implements IdentificationState {
  const factory IdentificationInitial() = _$IdentificationInitialImpl;
}

/// @nodoc
abstract class _$$IdentificationImageSelectedImplCopyWith<$Res> {
  factory _$$IdentificationImageSelectedImplCopyWith(
          _$IdentificationImageSelectedImpl value,
          $Res Function(_$IdentificationImageSelectedImpl) then) =
      __$$IdentificationImageSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes});
}

/// @nodoc
class __$$IdentificationImageSelectedImplCopyWithImpl<$Res>
    extends _$IdentificationStateCopyWithImpl<$Res,
        _$IdentificationImageSelectedImpl>
    implements _$$IdentificationImageSelectedImplCopyWith<$Res> {
  __$$IdentificationImageSelectedImplCopyWithImpl(
      _$IdentificationImageSelectedImpl _value,
      $Res Function(_$IdentificationImageSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
  }) {
    return _then(_$IdentificationImageSelectedImpl(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$IdentificationImageSelectedImpl implements IdentificationImageSelected {
  const _$IdentificationImageSelectedImpl(this.imageBytes);

  @override
  final Uint8List imageBytes;

  @override
  String toString() {
    return 'IdentificationState.imageSelected(imageBytes: $imageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentificationImageSelectedImpl &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageBytes));

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentificationImageSelectedImplCopyWith<_$IdentificationImageSelectedImpl>
      get copyWith => __$$IdentificationImageSelectedImplCopyWithImpl<
          _$IdentificationImageSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) {
    return imageSelected(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) {
    return imageSelected?.call(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class IdentificationImageSelected implements IdentificationState {
  const factory IdentificationImageSelected(final Uint8List imageBytes) =
      _$IdentificationImageSelectedImpl;

  Uint8List get imageBytes;

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentificationImageSelectedImplCopyWith<_$IdentificationImageSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdentificationLoadingImplCopyWith<$Res> {
  factory _$$IdentificationLoadingImplCopyWith(
          _$IdentificationLoadingImpl value,
          $Res Function(_$IdentificationLoadingImpl) then) =
      __$$IdentificationLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes});
}

/// @nodoc
class __$$IdentificationLoadingImplCopyWithImpl<$Res>
    extends _$IdentificationStateCopyWithImpl<$Res, _$IdentificationLoadingImpl>
    implements _$$IdentificationLoadingImplCopyWith<$Res> {
  __$$IdentificationLoadingImplCopyWithImpl(_$IdentificationLoadingImpl _value,
      $Res Function(_$IdentificationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
  }) {
    return _then(_$IdentificationLoadingImpl(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$IdentificationLoadingImpl implements IdentificationLoading {
  const _$IdentificationLoadingImpl(this.imageBytes);

  @override
  final Uint8List imageBytes;

  @override
  String toString() {
    return 'IdentificationState.loading(imageBytes: $imageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentificationLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageBytes));

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentificationLoadingImplCopyWith<_$IdentificationLoadingImpl>
      get copyWith => __$$IdentificationLoadingImplCopyWithImpl<
          _$IdentificationLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) {
    return loading(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) {
    return loading?.call(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IdentificationLoading implements IdentificationState {
  const factory IdentificationLoading(final Uint8List imageBytes) =
      _$IdentificationLoadingImpl;

  Uint8List get imageBytes;

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentificationLoadingImplCopyWith<_$IdentificationLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdentificationSuccessImplCopyWith<$Res> {
  factory _$$IdentificationSuccessImplCopyWith(
          _$IdentificationSuccessImpl value,
          $Res Function(_$IdentificationSuccessImpl) then) =
      __$$IdentificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes, PlantInfo plantInfo});

  $PlantInfoCopyWith<$Res> get plantInfo;
}

/// @nodoc
class __$$IdentificationSuccessImplCopyWithImpl<$Res>
    extends _$IdentificationStateCopyWithImpl<$Res, _$IdentificationSuccessImpl>
    implements _$$IdentificationSuccessImplCopyWith<$Res> {
  __$$IdentificationSuccessImplCopyWithImpl(_$IdentificationSuccessImpl _value,
      $Res Function(_$IdentificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
    Object? plantInfo = null,
  }) {
    return _then(_$IdentificationSuccessImpl(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == plantInfo
          ? _value.plantInfo
          : plantInfo // ignore: cast_nullable_to_non_nullable
              as PlantInfo,
    ));
  }

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantInfoCopyWith<$Res> get plantInfo {
    return $PlantInfoCopyWith<$Res>(_value.plantInfo, (value) {
      return _then(_value.copyWith(plantInfo: value));
    });
  }
}

/// @nodoc

class _$IdentificationSuccessImpl implements IdentificationSuccess {
  const _$IdentificationSuccessImpl(this.imageBytes, this.plantInfo);

  @override
  final Uint8List imageBytes;
  @override
  final PlantInfo plantInfo;

  @override
  String toString() {
    return 'IdentificationState.success(imageBytes: $imageBytes, plantInfo: $plantInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentificationSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            (identical(other.plantInfo, plantInfo) ||
                other.plantInfo == plantInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(imageBytes), plantInfo);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentificationSuccessImplCopyWith<_$IdentificationSuccessImpl>
      get copyWith => __$$IdentificationSuccessImplCopyWithImpl<
          _$IdentificationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) {
    return success(imageBytes, plantInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) {
    return success?.call(imageBytes, plantInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(imageBytes, plantInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class IdentificationSuccess implements IdentificationState {
  const factory IdentificationSuccess(
          final Uint8List imageBytes, final PlantInfo plantInfo) =
      _$IdentificationSuccessImpl;

  Uint8List get imageBytes;
  PlantInfo get plantInfo;

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentificationSuccessImplCopyWith<_$IdentificationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdentificationErrorImplCopyWith<$Res> {
  factory _$$IdentificationErrorImplCopyWith(_$IdentificationErrorImpl value,
          $Res Function(_$IdentificationErrorImpl) then) =
      __$$IdentificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes, String message});
}

/// @nodoc
class __$$IdentificationErrorImplCopyWithImpl<$Res>
    extends _$IdentificationStateCopyWithImpl<$Res, _$IdentificationErrorImpl>
    implements _$$IdentificationErrorImplCopyWith<$Res> {
  __$$IdentificationErrorImplCopyWithImpl(_$IdentificationErrorImpl _value,
      $Res Function(_$IdentificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
    Object? message = null,
  }) {
    return _then(_$IdentificationErrorImpl(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdentificationErrorImpl implements IdentificationError {
  const _$IdentificationErrorImpl(this.imageBytes, this.message);

  @override
  final Uint8List imageBytes;
  @override
  final String message;

  @override
  String toString() {
    return 'IdentificationState.error(imageBytes: $imageBytes, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentificationErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(imageBytes), message);

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentificationErrorImplCopyWith<_$IdentificationErrorImpl> get copyWith =>
      __$$IdentificationErrorImplCopyWithImpl<_$IdentificationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List imageBytes) imageSelected,
    required TResult Function(Uint8List imageBytes) loading,
    required TResult Function(Uint8List imageBytes, PlantInfo plantInfo)
        success,
    required TResult Function(Uint8List imageBytes, String message) error,
  }) {
    return error(imageBytes, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List imageBytes)? imageSelected,
    TResult? Function(Uint8List imageBytes)? loading,
    TResult? Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult? Function(Uint8List imageBytes, String message)? error,
  }) {
    return error?.call(imageBytes, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List imageBytes)? imageSelected,
    TResult Function(Uint8List imageBytes)? loading,
    TResult Function(Uint8List imageBytes, PlantInfo plantInfo)? success,
    TResult Function(Uint8List imageBytes, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(imageBytes, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentificationInitial value) initial,
    required TResult Function(IdentificationImageSelected value) imageSelected,
    required TResult Function(IdentificationLoading value) loading,
    required TResult Function(IdentificationSuccess value) success,
    required TResult Function(IdentificationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdentificationInitial value)? initial,
    TResult? Function(IdentificationImageSelected value)? imageSelected,
    TResult? Function(IdentificationLoading value)? loading,
    TResult? Function(IdentificationSuccess value)? success,
    TResult? Function(IdentificationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentificationInitial value)? initial,
    TResult Function(IdentificationImageSelected value)? imageSelected,
    TResult Function(IdentificationLoading value)? loading,
    TResult Function(IdentificationSuccess value)? success,
    TResult Function(IdentificationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IdentificationError implements IdentificationState {
  const factory IdentificationError(
          final Uint8List imageBytes, final String message) =
      _$IdentificationErrorImpl;

  Uint8List get imageBytes;
  String get message;

  /// Create a copy of IdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentificationErrorImplCopyWith<_$IdentificationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
