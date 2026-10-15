import 'package:freezed_annotation/freezed_annotation.dart';

part 'vivekanand_quote_model.freezed.dart';
part 'vivekanand_quote_model.g.dart';

@freezed
abstract class VivekanandQuoteModel with _$VivekanandQuoteModel {
  const factory VivekanandQuoteModel({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'quotes_hindi') @Default('') String quotesHindi,
    @JsonKey(name: 'quotes_english') @Default('') String quotesEnglish,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: '__v') @Default(0) int v,
  }) = _VivekanandQuoteModel;

  factory VivekanandQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$VivekanandQuoteModelFromJson(json);
}
