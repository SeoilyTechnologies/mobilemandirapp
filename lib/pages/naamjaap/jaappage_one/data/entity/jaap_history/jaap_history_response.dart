import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

part 'jaap_history_response.freezed.dart';
part 'jaap_history_response.g.dart';

@freezed
abstract class JaapHistoryResponse with _$JaapHistoryResponse {
  const factory JaapHistoryResponse({
    required bool success,
    required Summary summary,
    required List<JaapSession> data,
  }) = _JaapHistoryResponse;

  factory JaapHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$JaapHistoryResponseFromJson(json);
}

@freezed
abstract class Summary with _$Summary {
  const factory Summary({
    required int totalSessions,
    required int totalCount,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
abstract class JaapSession with _$JaapSession {
  const factory JaapSession({
    required String sessionId,
    Mantra? mantra,
    required int targetCount,
    required int currentCount,
    required String dateLabel,
    required String timeRange,
    required String durationText,
    required String createdAt,
    required int durationSeconds,
    required String status,
    required bool isCompleted,
  }) = _JaapSession;

  factory JaapSession.fromJson(Map<String, dynamic> json) =>
      _$JaapSessionFromJson(json);
}

@freezed
abstract class Mantra with _$Mantra {
  const factory Mantra({
    required String id,
    required String nameEn,
    required String nameHi,
    required String plainLyricsEn,
    required String plainLyricsHi,
  }) = _Mantra;

  factory Mantra.fromJson(Map<String, dynamic> json) =>
      _$MantraFromJson(json);
}

extension MantraExt on Mantra {
  String getName(bool isHindi) {
    if (isHindi && nameHi.trim().isNotEmpty) {
      return nameHi;
    }
    if (nameEn.trim().isNotEmpty) {
      return nameEn;
    }
    return nameHi;
  }

  String getLyrics(bool isHindi) {
    if (isHindi && plainLyricsHi.trim().isNotEmpty) {
      return plainLyricsHi;
    }
    if (plainLyricsEn.trim().isNotEmpty) {
      return plainLyricsEn;
    }
    return plainLyricsHi;
  }
}

extension JaapSessionExt on JaapSession {
  String getMantraName(BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final m = mantra;
    if (m == null) return context.l10n.iWillDo;
    return m.getName(isHindi);
  }
}

