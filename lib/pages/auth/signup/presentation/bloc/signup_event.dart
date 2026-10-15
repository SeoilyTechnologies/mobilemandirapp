import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.freezed.dart';

@freezed
abstract class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged(String fullName) = FullNameChanged;
  const factory SignupEvent.locationChanged(String location) = LocationChanged;
  const factory SignupEvent.setLatLong(String latitude,String longitude) = LocationLatLong;
  const factory SignupEvent.fetchLocationSuggestions(String query) =
  FetchLocationSuggestions;
  const factory SignupEvent.selectLocation({
    required String description,
    required String placeId,
  }) = SelectLocation;
  const factory SignupEvent.showHideLocationList(bool showHide) = ShowHideLocationListEvent;
  const factory SignupEvent.emailChanged(String email) = EmailChanged;
  const factory SignupEvent.phoneChanged(String phone) = PhoneNoChanged;
  const factory SignupEvent.dateOfBirthChanged(String dob) = DateOfBirthChanged;
  const factory SignupEvent.dateOfTimeChanged(String dobTime) = DateOfTimeChanged;
  const factory SignupEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignupEvent.confirmPasswordChanged(String conPassword) = ConPasswordChanged;
  const factory SignupEvent.makeInitial() = SignUpMakeInitial;
  const factory SignupEvent.signUpSubmitted() =SignUpSubmitted;
  const factory SignupEvent.clearApiResponse() =ApiResponseReset;
  const factory SignupEvent.genderChanged(String gender) = GenderChanged;

}
