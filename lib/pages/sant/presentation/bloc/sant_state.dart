part of 'sant_bloc.dart';

@freezed
abstract class SantState with _$SantState {
  const factory SantState({
    @Default("") String selectedLetter,

    @Default(SantListResponse()) SantListResponse santListResponse,
    @Default(SantListResponse()) SantListResponse relatedsantListResponse,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool isSuccess,

    /// Single Sant detail state (DEFAULT added ✅)
    @Default(SantDetailResponse()) SantDetailResponse santDetailResponse,
    @Default(false) bool isDetailLoading,
  }) = _SantState;

  const SantState._();

  factory SantState.initial() => const SantState();
}
