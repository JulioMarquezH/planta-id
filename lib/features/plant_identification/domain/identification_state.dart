import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'plant_info.dart';

part 'identification_state.freezed.dart';

@freezed
sealed class IdentificationState with _$IdentificationState {
  const factory IdentificationState.initial() = IdentificationInitial;
  const factory IdentificationState.imageSelected(Uint8List imageBytes) =
      IdentificationImageSelected;
  const factory IdentificationState.loading(Uint8List imageBytes) =
      IdentificationLoading;
  const factory IdentificationState.success(
      Uint8List imageBytes, PlantInfo plantInfo) = IdentificationSuccess;
  const factory IdentificationState.error(Uint8List imageBytes, String message) =
      IdentificationError;
}
