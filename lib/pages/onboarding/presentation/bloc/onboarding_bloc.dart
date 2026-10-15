import 'package:bloc/bloc.dart';

import '../../data/entity/OnboardingItem.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<Started>(_handleStarted);
    on<PageChanged>(_handlePageChanged);

    // 🔥 Auto trigger data load
    add(const OnboardingEvent.started());
  }

  /// ---------------------------
  /// Event Handlers
  /// ---------------------------

  void _handleStarted(Started event, Emitter<OnboardingState> emit) {
    _loadOnboardingItems(emit);
  }

  void _handlePageChanged(PageChanged event, Emitter<OnboardingState> emit) {
    _updateCurrentIndex(event.index, emit);
  }

  /// ---------------------------
  /// State Mutations
  /// ---------------------------

  void _loadOnboardingItems(Emitter<OnboardingState> emit) {
    emit(state.copyWith(items: _onboardingItems()));
  }

  void _updateCurrentIndex(int index, Emitter<OnboardingState> emit) {
    emit(state.copyWith(currentIndex: index));
  }

  /// ---------------------------
  /// Data Providers
  /// ---------------------------

  static List<OnboardingItem> _onboardingItems() {
    return [
      OnboardingItem(
        image: "assets/new_design/background/deviceframes_aarti.png",
        title: (l10n) => l10n.devotionCompanion,
        subtitle: (l10n) => l10n.onboardingSub1,
      ),
      OnboardingItem(
        image: "assets/new_design/background/panchang.png",
        title: (l10n) => l10n.serveWithCompassion,
        subtitle: (l10n) => l10n.onboardingSub2,
      ),
      // OnboardingItem(
      //   image: "assets/new_design/background/jap.jpg",
      //   title: "Peace, Positivity and Faith",
      //   subtitle:
      //   "Explore kathas, festivals and devotional content anytime.",
      // ),
    ];
  }
}
