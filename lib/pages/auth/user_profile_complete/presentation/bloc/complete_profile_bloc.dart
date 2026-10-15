// complete_profile_bloc.dart
import 'package:bloc/bloc.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../domain/usecase/complete_profile_usecase.dart';
import 'complete_profile_event.dart';
import 'complete_profile_state.dart';

class CompleteProfileBloc
    extends Bloc<CompleteProfileEvent, CompleteProfileState> {
  final CompleteProfileUsecase _usecase = getIt<CompleteProfileUsecase>();

  CompleteProfileBloc() : super(CompleteProfileState.initial()) {
    on<NameChanged>(
      (e, emit) => emit(
        state.copyWith(
          name: e.name,
          apiErrorMessage: "",
          apiSuccessMessage: "",
          isServerError: false,
          isSuccess: false,
        ),
      ),
    );
    on<GenderChanged>(
      (e, emit) => emit(
        state.copyWith(
          gender: e.gender,
          apiErrorMessage: "",
          apiSuccessMessage: "",
          isServerError: false,
          isSuccess: false,
        ),
      ),
    );
    on<DobChanged>(
      (e, emit) => emit(
        state.copyWith(
          dob: e.dob,
          apiErrorMessage: "",
          apiSuccessMessage: "",
          isServerError: false,
          isSuccess: false,
        ),
      ),
    );
    on<TimeChanged>(
      (e, emit) => emit(
        state.copyWith(
          time: e.time,
          apiErrorMessage: "",
          apiSuccessMessage: "",
          isServerError: false,
          isSuccess: false,
        ),
      ),
    );
    on<ResetProfile>((e, emit) => emit(CompleteProfileState.initial()));
    on<SubmitProfile>(_onSubmitProfile);
  }

  Future<void> _onSubmitProfile(
    SubmitProfile event,
    Emitter<CompleteProfileState> emit,
  ) async {
    // validation
    if (state.name.isEmpty || state.gender.isEmpty ) {
      emit(state.copyWith(apiErrorMessage: "All fields are required"));
      return;
    }

    emit(
      state.copyWith(
        isLoading: true,
        apiErrorMessage: '',
        isServerError: false,
        isSuccess: false,
      ),
    );

    final data = {
      "username": state.name,
      "gender": state.gender,
      "date_of_birth": state.dob??"",
      "birth_time": "",
      "isProfileComplete": true,
    };

    final result = await _usecase.submitProfile(data);

    result.fold(
      (error) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerError: true,
            isSuccess: false,
            apiSuccessMessage: "",
            apiErrorMessage: error.message,
          ),
        );
      },
      (response) {
        // ✅ response IS UPDATED USER FROM API
        emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            isServerError: false,
            apiErrorMessage: "",

            apiSuccessMessage: response.message,
            updatedUser: response,
          ),
        );
      },
    );
  }
}
