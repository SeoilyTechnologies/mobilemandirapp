import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../signin/data/entity/login_response.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default("") String name,
    @Default("") String email,
    @Default("") String phoneNumber,

    @Default("") String dateOfBirth,   // DOB
    @Default("") String birthTime,     // TIME

    @Default("") String location,
    @Default("") String gender,

    @Default(false) bool isEditing,
    @Default(false) bool isSaving,

    @Default(false) bool isPlaceLoading,
    @Default([]) List<dynamic> placeSuggestions,
    @Default(false) bool showHideLocationList,

    @Default('') String latitidue,
    @Default('') String longitude,

    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,

    File? avatarLocalFile,

    @Default(LoginResponse()) LoginResponse profile,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState();
}
