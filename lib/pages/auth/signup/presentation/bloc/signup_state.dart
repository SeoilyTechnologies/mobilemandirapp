import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState({
    @Default('') String errorMessage,
    @Default(false) bool isServerError,
    @Default(false) bool isLoading,
    @Default('') String apiSuccessMessage,
    @Default('') String email,
    @Default('') String gender,
    @Default('') String location,
    // 👇 NEW
    @Default(false) bool isPlaceLoading,
    @Default([]) List<dynamic> placeSuggestions,
    @Default(false) bool showHideLocationList,//location list view buulder only show input field fopcus and on tap of this this listview will ne hide
    @Default('') String latitidue,
    @Default('') String longitude,
    @Default('') String username,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String phoneNo,
    @Default('') String dateOfBirth,
    @Default('') String dateOfTime,
    @Default(SignupResponse()) SignupResponse response
  }) = _SignupState;

  /// Initial state factory
  factory SignupState.initial() => const SignupState();


}
