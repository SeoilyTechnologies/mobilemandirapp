import 'package:freezed_annotation/freezed_annotation.dart';

part 'jaap_page_event.freezed.dart';

@freezed
abstract class JaapPageEvent with _$JaapPageEvent {

  const factory JaapPageEvent.init({
    required int totalCount,
    required String mantraName,
    required String sessionId,
    @Default(0) int currentCount,
    @Default(0) int duration,
    // ✅ NEW
    @Default("") String createdAt,
  }) = InitJaapPage;

  const factory JaapPageEvent.increment() = IncrementJaap;
  const factory JaapPageEvent.complete( Map<String, dynamic> dayData) = CompleteJaap;

  const factory JaapPageEvent.reset() = ResetJaap;

  const factory JaapPageEvent.tick() = TickJaap;

  const factory JaapPageEvent.completeReset() = CompleteResetJaap;


  const factory JaapPageEvent.createJaapSession(String jaapcpunt,String selectedmantra) = CreateSameJaapSession;
  const factory JaapPageEvent.syncProgress({
    @Default(false) bool isFinal,
  }) = SyncProgress;
}
