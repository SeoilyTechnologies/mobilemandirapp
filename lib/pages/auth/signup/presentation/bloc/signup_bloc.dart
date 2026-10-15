import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import 'package:mandirapp/pages/auth/signup/domain/usecase/signup_usecase.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import 'signup_event.dart';
import 'signup_state.dart';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/auth/signup/data/entity/signup_response.dart';
import 'package:mandirapp/pages/auth/signup/domain/usecase/signup_usecase.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUsecase _signupUsecase = getIt<SignupUsecase>();
  final String _sessionToken = Random().nextInt(999999).toString();

  SignupBloc() : super(const SignupState()) {
    // Register all event handlers
    on<FullNameChanged>(_onFullNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PhoneNoChanged>(_onPhoneNoChanged);
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<DateOfTimeChanged>(_onDateOfTimeChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConPasswordChanged>(_onConfirmPasswordChanged);
    on<ApiResponseReset>(_apiResponseReset);
    on<LocationChanged>(_onLocationChange);
    on<LocationLatLong>(_onLatLongChange);
    on<ShowHideLocationListEvent>(_onShowHideLocationList);
    on<FetchLocationSuggestions>(_onFetchLocationSuggestions);
    on<SelectLocation>(_onSelectLocation);

    // 👇 New events
    on<SignUpMakeInitial>(_onMakeInitial);
    on<SignUpSubmitted>(_onSignUpSubmitted);
    on<GenderChanged>(_onGenderChanged);
  }

  void _apiResponseReset(ApiResponseReset event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(errorMessage: '', response: SignupResponse(),isServerError: false, isLoading: false,apiSuccessMessage: '',),
    );
  }

  // 👇 Individual event handlers
  void _onFullNameChanged(FullNameChanged event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(username: event.fullName,errorMessage: '', response: SignupResponse(),isServerError: false, isLoading: false,apiSuccessMessage: '',),
    );
  }


  void _onLatLongChange(LocationLatLong event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(latitidue: event.latitude,longitude:event.longitude,errorMessage: '', response: SignupResponse(),isServerError: false, isLoading: false,apiSuccessMessage: '',),
    );
  }

  // ================= LOCATION =================

  void _onLocationChange(
      LocationChanged event,
      Emitter<SignupState> emit,
      ) {
    emit(
      state.copyWith(
        errorMessage:"",
        location: event.location,
        showHideLocationList: true,
      ),
    );

    if (event.location.isNotEmpty) {
      add(SignupEvent.fetchLocationSuggestions(event.location));
    }
  }

  Future<void> _onFetchLocationSuggestions(
      FetchLocationSuggestions event,
      Emitter<SignupState> emit,
      ) async {
    emit(state.copyWith(isPlaceLoading: true));

    final result = await _signupUsecase.fetchPlaceSuggestions(
      event.query,
      _sessionToken,
    );

    result.fold(
          (failure) => emit(
        state.copyWith(errorMessage:"",
          isPlaceLoading: false,
          placeSuggestions: [],
        ),
      ),
          (suggestions) => emit(
        state.copyWith(
          errorMessage:"",
          isPlaceLoading: false,
          placeSuggestions: suggestions,
        ),
      ),
    );
  }

  Future<void> _onSelectLocation(
      SelectLocation event,
      Emitter<SignupState> emit,
      ) async {
    emit(
      state.copyWith(errorMessage:'',
        location: event.description,
        showHideLocationList: false,
        placeSuggestions: [],
      ),
    );

    final result = await _signupUsecase.fetchLatLng(
      event.placeId,
      _sessionToken,
    );

    result.fold(
          (_) {},
          (location) => emit(
        state.copyWith(
            errorMessage:"",
          latitidue: location['lat'].toString(),
          longitude: location['lng'].toString(),
        ),
      ),
    );
  }

  void _onShowHideLocationList(
      ShowHideLocationListEvent event,
      Emitter<SignupState> emit,
      ) {
    emit(state.copyWith(showHideLocationList: event.showHide));
  }






  void _onGenderChanged(GenderChanged event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(gender: event.gender,errorMessage: '', response: SignupResponse(),isServerError: false, isLoading: false,apiSuccessMessage: '',),
    );
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        isServerError: false,
        errorMessage: '',  isLoading: false,apiSuccessMessage: '',response: SignupResponse(),
      ),
    );
  }

  void _onPhoneNoChanged(PhoneNoChanged event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(
        phoneNo: event.phone,
          errorMessage: '', isServerError: false, isLoading: false,apiSuccessMessage: '',response: SignupResponse(),
      ),
    );
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<SignupState> emit,
  )
  {
    emit(
      state.copyWith(
        dateOfBirth: event.dob,

          errorMessage: '', isServerError: false, isLoading: false,apiSuccessMessage: '',response: SignupResponse(),
      ),
    );
  }

  void _onDateOfTimeChanged(
    DateOfTimeChanged event,
    Emitter<SignupState> emit,
  )
  {
    emit(
      state.copyWith(
        dateOfTime: event.dobTime,
        errorMessage: '',
        isServerError: false,
        isLoading: false,apiSuccessMessage: '',response: SignupResponse(),
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    emit(
      state.copyWith(
        password: event.password,
        errorMessage: '',
        isServerError: false,
        isLoading: false,apiSuccessMessage: '',response: SignupResponse(),
      ),
    );
  }

  void _onConfirmPasswordChanged(
    ConPasswordChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(
      state.copyWith(
        confirmPassword: event.conPassword,
        errorMessage: '',
        isServerError: false,
        isLoading: false,apiSuccessMessage: '',response: SignupResponse(),

      ),
    );
  }

  // 👇 Reset state to initial
  void _onMakeInitial(SignUpMakeInitial event, Emitter<SignupState> emit) {
    emit(const SignupState());
  }

  // 👇 Handle Sign Up Submit API
  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignupState> emit,
  ) async {
    try {
      //first here need to validate all field
      if(state.username.isEmpty){
        emit(
          state.copyWith(
            errorMessage: 'Username is required',)
        );
      }else if(state.email.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'Email is required',)
        );

      }
      else if (!isValidEmail(state.email)) {
        emit(state.copyWith(errorMessage: 'Enter a valid email address'));
      }
      else if(state.location.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'Location is required',)
        );
      }
      else if(state.dateOfBirth.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'DOB is required',)
        );
      } else if(state.gender.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'Please Select Your Gender',)
        );
      }
      else if(state.password.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'Password is required',)
        );
      }else if(state.confirmPassword.isEmpty){
        emit(
            state.copyWith(
              errorMessage: 'Confirm Password is required',)
        );
      }else if (state.password != state.confirmPassword) {
        emit(state.copyWith(errorMessage: 'Passwords do not match'));
      }else{
        emit(
          state.copyWith(
            errorMessage: '',
            isLoading: true,
            isServerError: false,
            apiSuccessMessage: '',
            response: SignupResponse(),
          ),
        );
        final Map<String, dynamic> signupData = {
          "username": "${state.username}",
          "email": "${state.email}",
          "password": "${state.password}",
          "date_of_birth": "${state.dateOfBirth} ${state.dateOfTime}",
          "account_type": "email",
          "language": "en",
          "gender":state.gender,
          "latitude": state.latitidue,
          "longitude": state.longitude,
          "location":state.location
        };
        final result = await _signupUsecase.registerAccount(signupData);
        result.fold(
              (failure) => emit(
            state.copyWith(
              isServerError: true,
              errorMessage: failure.message,
              response: SignupResponse(),
              isLoading: false,
              apiSuccessMessage: '',
            ),
          ),
              (success) => emit(
            state.copyWith(
              apiSuccessMessage: success.message,
              errorMessage: '',
              isServerError: false,
              isLoading: false,
              response: success,
            ),
          ),
        );
      }



    } catch (e) {
      emit(
        state.copyWith(
          isServerError: true,
          errorMessage: 'Unexpected error occurred: $e',
        ),
      );
    }
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

}
