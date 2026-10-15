import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/OnboardingItem.dart';

part 'onboarding_state.freezed.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(0) int currentIndex,
    @Default(<OnboardingItem>[]) List<OnboardingItem> items,
  }) = _OnboardingState;

  /// Initial state
  factory OnboardingState.initial() => const OnboardingState(
    currentIndex: 0,
    items: [],
  );
}
