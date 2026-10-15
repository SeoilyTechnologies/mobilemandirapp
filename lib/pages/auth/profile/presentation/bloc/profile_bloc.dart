import 'dart:io';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/main.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../signin/domain/usecase/login_usecase.dart';
import '../../../signup/domain/usecase/signup_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final LoginUsecase _loginUsecase = getIt<LoginUsecase>();
  final SignupUsecase _signupUsecase = getIt<SignupUsecase>();
  final String _sessionToken = Random().nextInt(999999).toString();

  ProfileBloc() : super(ProfileState.initial()) {
    on<LoadProfile>(_onLoadProfile);
    on<ToggleEdit>(_onToggleEdit);

    on<EditProfileDateOfBirthChanged>(_onDateOfBirthChanged);
    on<EditProfileDateOfTimeChanged>(_onDateOfTimeChanged);
    on<RefreshProfile>(_onRefreshProfile);

    on<UpdateName>(_onUpdateName);
    on<UpdateEmail>(_onUpdateEmail);
    on<UpdatePhone>(_onUpdatePhone);
    on<UpdateDOB>(_onUpdateDOB);
    on<UpdateLocation>(_onUpdateLocation);
    on<UpdateGender>(_onUpdateGender);
    on<UpdateAvatar>(_onUpdateAvatar);
    on<SaveProfile>(_onSaveProfile);

    on<EditProfileShowHideLocationListEvent>(_onShowHideLocationList);
    on<EditProfileFetchLocationSuggestions>(_onFetchLocationSuggestions);
    on<EditProfileSelectLocation>(_onSelectLocation);
    on<EditProfileLocationChanged>(_onLocationChange);
    on<EditProfileLocationLatLong>(_onLatLongChange);
  }

  Future<void> _onRefreshProfile(
    RefreshProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, apiErrorMessage: ''));

    try {
      final result = await _loginUsecase.callGetUserProfileAPi({});

      if (emit.isDone) return;

      result.fold(
        (failure) {
          if (emit.isDone) return;
          emit(
            state.copyWith(isLoading: false, apiErrorMessage: failure.message),
          );
        },
        (response) {
          final user = response.user;

          // save to prefs
          getIt<SharedPrefs>().setModel(AppConstant.userModel, response);
          getIt<SharedPrefs>().setModel(AppConstant.userModel, response);
          if (emit.isDone) return;
          emit(
            state.copyWith(
              isLoading: false,
              profile: response,
              name: user.username ?? '',
              email: user.email ?? '',
              phoneNumber: user.phone ?? '',
              dateOfBirth: user.date_of_birth ?? '',
              birthTime: user.birth_time ?? '',
              location: user.location ?? '',
              gender: user.gender ?? '',
              latitidue: user.latitude ?? '',
              longitude: user.longitude ?? '',
            ),
          );
        },
      );
    } catch (e) {
      if (emit.isDone) return;
      emit(state.copyWith(isLoading: false, apiErrorMessage: e.toString()));
    }
  }

  // ================= LOAD PROFILE =================

  Future<void> _onLoadProfile(
    LoadProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );

    try {
      // ✅ IMPORTANT: await here
      final result = await _loginUsecase.callGetUserProfileAPi({});

      result.fold(
        (failure) {
          if (emit.isDone) return; // safety
          emit(
            state.copyWith(isLoading: false, apiErrorMessage: failure.message),
          );
        },
        (response) async {
          final user = response.user;

          // save to prefs
          try {
            await getIt<SharedPrefs>().setModel(
              AppConstant.userModel,
              response,
            );
          } catch (_) {}

          if (emit.isDone) return; // safety
          emit(
            state.copyWith(
              isLoading: false,
              profile: response,
              name: user.username ?? '',
              email: user.email ?? '',
              phoneNumber: user.phone ?? '',
              dateOfBirth: user.date_of_birth ?? '',
              birthTime: user.birth_time ?? '',
              location: user.location ?? '',
              gender: user.gender ?? '',
              latitidue: user.latitude ?? '',
              longitude: user.longitude ?? '',
            ),
          );

          // BlocProvider.of<AppBloc>(navigatorKey.currentContext!).loadUserData();
        },
      );
    } catch (e) {
      if (emit.isDone) return;
      emit(state.copyWith(isLoading: false, apiErrorMessage: e.toString()));
    }
  }

  // ================= SAVE PROFILE =================

  Future<void> _onSaveProfile(
    SaveProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        isSaving: true,
        apiErrorMessage: '',
        apiSuccessMessage: '',
        isLoading: false,

        showHideLocationList: false,
      ),
    );

    try {
      final Map<String, dynamic> body = {
        'username': state.name.trim(),
        'gender': state.gender.trim(),
        'date_of_birth': state.dateOfBirth.trim(),
        'birth_time': state.birthTime.trim(),
        'location': state.location.trim(),
        'latitude': state.latitidue,
        'longitude': state.longitude,
      };

      final File? imageFile = state.avatarLocalFile;

      final result = await _loginUsecase.callUpdateUserProfileAPi(
        body,
        file: imageFile,
      );

      result.fold(
        (failure) {
          if (emit.isDone) return;
          emit(
            state.copyWith(isSaving: false, apiErrorMessage: failure.message),
          );
        },
        (response) {
          final user = response.user;

          // 🔹 save updated profile in prefs
          getIt<SharedPrefs>().setModel(AppConstant.userModel, response);

          if (emit.isDone) return;
          emit(
            state.copyWith(
              isSaving: false,
              isEditing: false,
              profile: response,
              name: user.username ?? '',
              email: user.email ?? '',
              phoneNumber: user.phone ?? '',
              dateOfBirth: user.date_of_birth ?? '',
              birthTime: user.birth_time ?? '',
              location: user.location ?? '',
              gender: user.gender ?? '',
              latitidue: user.latitude ?? '',
              longitude: user.longitude ?? '',
              avatarLocalFile: null,
              apiSuccessMessage: 'Profile updated successfully',
            ),
          );
        },
      );
    } catch (e) {
      if (emit.isDone) return;
      emit(state.copyWith(isSaving: false, apiErrorMessage: e.toString()));
    }
  }

  // ================= TOGGLE EDIT =================

  void _onToggleEdit(ToggleEdit event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        isEditing: !state.isEditing,
        apiErrorMessage: '',
        apiSuccessMessage: '',
      ),
    );
  }

  // ================= LOCATION =================

  void _onLocationChange(
    EditProfileLocationChanged event,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        latitidue: '', // clear
        longitude: '',
        location: event.location,
        placeSuggestions: event.location.isEmpty ? [] : state.placeSuggestions,
        showHideLocationList: event.location.isNotEmpty,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
      ),
    );

    if (event.location.isNotEmpty) {
      add(EditProfileFetchLocationSuggestions(event.location));
    }
  }

  Future<void> _onFetchLocationSuggestions(
    EditProfileFetchLocationSuggestions event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isPlaceLoading: true));

    final result = await _signupUsecase.fetchPlaceSuggestions(
      event.query,
      _sessionToken,
    );

    result.fold(
      (_) => emit(state.copyWith(isPlaceLoading: false, placeSuggestions: [])),
      (suggestions) => emit(
        state.copyWith(isPlaceLoading: false, placeSuggestions: suggestions),
      ),
    );
  }

  Future<void> _onSelectLocation(
    EditProfileSelectLocation event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
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
          latitidue: location['lat'].toString(),
          longitude: location['lng'].toString(),
        ),
      ),
    );
  }

  void _onShowHideLocationList(
    EditProfileShowHideLocationListEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(showHideLocationList: event.showHide));
  }

  void _onLatLongChange(
    EditProfileLocationLatLong event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(latitidue: event.latitude, longitude: event.longitude));
  }

  // ================= FIELD UPDATES =================

  void _onUpdateName(UpdateName event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        name: event.name,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdateEmail(UpdateEmail event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdatePhone(UpdatePhone event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        phoneNumber: event.phone,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onDateOfBirthChanged(
    EditProfileDateOfBirthChanged event,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        dateOfBirth: event.dob,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onDateOfTimeChanged(
    EditProfileDateOfTimeChanged event,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        birthTime: event.dobTime,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdateDOB(UpdateDOB event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        dateOfBirth: event.dob,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdateLocation(UpdateLocation event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        location: event.location,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdateGender(UpdateGender event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        gender: event.gender,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }

  void _onUpdateAvatar(UpdateAvatar event, Emitter<ProfileState> emit) {
    emit(
      state.copyWith(
        avatarLocalFile: event.file,
        isLoading: false,
        apiSuccessMessage: "",
        apiErrorMessage: "",
        showHideLocationList: false,
      ),
    );
  }
}
