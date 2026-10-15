// complete_profile_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_profile_event.freezed.dart';

@freezed
abstract class CompleteProfileEvent with _$CompleteProfileEvent {
  const factory CompleteProfileEvent.nameChanged(String name) = NameChanged;
  const factory CompleteProfileEvent.genderChanged(String gender) = GenderChanged;
  const factory CompleteProfileEvent.dobChanged(String dob) = DobChanged;
  const factory CompleteProfileEvent.timeChanged(String time) = TimeChanged;
  const factory CompleteProfileEvent.submitProfile() = SubmitProfile;
  const factory CompleteProfileEvent.reset() = ResetProfile;
}
