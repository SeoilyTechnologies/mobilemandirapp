import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {

  const factory ProfileEvent.locationChanged(String location) = EditProfileLocationChanged;
  const factory ProfileEvent.setLatLong(String latitude,String longitude) = EditProfileLocationLatLong;
  const factory ProfileEvent.fetchLocationSuggestions(String query) =
  EditProfileFetchLocationSuggestions;
  const factory ProfileEvent.selectLocation({
    required String description,
    required String placeId,
  }) = EditProfileSelectLocation;
  const factory ProfileEvent.showHideLocationList(bool showHide) = EditProfileShowHideLocationListEvent;

  const factory ProfileEvent.refreshProfile() = RefreshProfile;

  const factory ProfileEvent.dateOfBirthChanged(String dob)
  = EditProfileDateOfBirthChanged;

  const factory ProfileEvent.dateOfTimeChanged(String dobTime)
  = EditProfileDateOfTimeChanged;

  /// Load profile from API / local storage
  const factory ProfileEvent.loadProfile() = LoadProfile;

  /// Toggle view/edit mode
  const factory ProfileEvent.toggleEdit() = ToggleEdit;

  /// ✔ Name update event
  const factory ProfileEvent.updateName(String name) = UpdateName;

  /// ✔ Email update event
  const factory ProfileEvent.updateEmail(String email) = UpdateEmail;

  /// ✔ Phone Number update event
  const factory ProfileEvent.updatePhone(String phone) = UpdatePhone;

  /// ✔ Date Of Birth update event
  const factory ProfileEvent.updateDOB(String dob) = UpdateDOB;

  /// ✔ Location update event
  const factory ProfileEvent.updateLocation(String location) = UpdateLocation;

  /// ✔ Gender update event
  const factory ProfileEvent.updateGender(String gender) = UpdateGender;

  /// Save full updated profile to server
  const factory ProfileEvent.saveProfile() = SaveProfile;

  /// Profile Pic event
  const factory ProfileEvent.updateAvatar(File file) = UpdateAvatar;
}
