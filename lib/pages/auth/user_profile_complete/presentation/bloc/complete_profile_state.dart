// complete_profile_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../signin/data/entity/login_response.dart';

part 'complete_profile_state.freezed.dart';

@freezed
abstract class CompleteProfileState with _$CompleteProfileState {
  const factory CompleteProfileState({
    @Default('') String name,
    @Default('') String gender,
    @Default('') String dob,
    @Default('') String time,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isServerError,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,

    // ❌ REMOVE this
    // @Default(LoginResponse()) LoginResponse loginResponse,

    // ✅ ADD this
    LoginResponse? updatedUser,
  }) = _CompleteProfileState;

  factory CompleteProfileState.initial() => const CompleteProfileState();
}
