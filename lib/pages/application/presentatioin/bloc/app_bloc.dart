import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/forceupdate_response/force_update_response.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../auth/signin/domain/usecase/login_usecase.dart';
import '../../../notification/domain/usecase/unread_notification_count_use_case.dart';
import 'app_state.dart';

part 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final LoginUsecase _loginUsecase = getIt<LoginUsecase>();
  final UnreadNotificationCountUseCase _unreadNotificationCountUseCase =
      getIt<UnreadNotificationCountUseCase>();

  AppBloc() : super(AppState.initial()) {
    loadUserData();
    on<UserDataUpdate>(updateUserData);
    on<TriggerAppEvent>(triggerAppEvet);
    on<HandleBackPressEvent>(handleBackPressEvent);
    on<TriggerDrawerEvent>(triggerDrawerEvent);
    on<ForceUpdateEvent>(_forceUpdate);
    on<HideShowMusciActionButtons>(_onMusicActionToggle);
    on<GetUnreadNotificationCountEvent>(_getUnreadNotificationCount);

    add(UserDataUpdate());
  }

  Future<void> _getUnreadNotificationCount(
    GetUnreadNotificationCountEvent event,
    Emitter<AppState> emit,
  ) async {
    final response = await _unreadNotificationCountUseCase();

    response.fold(
      (failure) {
        emit(state.copyWith(isError: true, errorMessage: failure.message));
      },
      (success) {
        emit(
          state.copyWith(
            unreadNotification: success,
            isError: false,
            errorMessage: '',
          ),
        );
      },
    );
  }

  Future<void> _onMusicActionToggle(
    HideShowMusciActionButtons event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isShowMusicAction: event.isShowMusicAction));
  }

  Future<void> _forceUpdate(
    ForceUpdateEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(data: ForceUpdateData()));

    final response = await _loginUsecase.forceUpdate();

    response.fold(
      (err) {
        emit(state.copyWith(isLoading: false));
      },
      (success) {
        //yaha pe sb blank aa raha hai
        emit(state.copyWith(data: success));
      },
    );
  }

  // Future<void> updateUserDatas(
  //   UserDataUpdate event,
  //   Emitter<AppState> emit,
  // ) async {
  //   await loadUserData();
  // }

  Future<void> updateUserData(
    UserDataUpdate event,
    Emitter<AppState> emit,
  ) async {
    var userdata = await getIt<SharedPrefs>().getModel<LoginResponse>(
      "user_model",
      (json) => LoginResponse.fromJson(json),
    );

    if (userdata != null) {
      emit(state.copyWith(userdata: userdata!));
      emit(state.copyWith(userdata: userdata!));
    }
  }

  Future<void> loadUserData() async {
    try {
      var userdata = await getIt<SharedPrefs>().getModel<LoginResponse>(
        "user_model",
        (json) => LoginResponse.fromJson(json),
      );
      if (userdata != null) {
        emit(state.copyWith(userdata: userdata));
        add(UserDataUpdate());
      }
    } catch (error) {
      emit(
        state.copyWith(
          isLoadingreport: false,
          isError: false,
          errorMessage: "",
        ),
      );
    }
  }

  Future<void> triggerAppEvet(
    TriggerAppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(index: event.index, isLoadingreport: false));
  }

  Future<void> handleBackPressEvent(
    HandleBackPressEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(
      state.copyWith(
        index: state.index,
        lastBackPressTime: event.lastPressedAt,
        isLoadingreport: false,
      ),
    );
  }

  Future<void> triggerDrawerEvent(
    TriggerDrawerEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(drawerIndex: event.drawerIndex));
  }
}
