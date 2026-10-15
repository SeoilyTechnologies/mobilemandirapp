// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vivekanand_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VivekanandQuoteModel _$VivekanandQuoteModelFromJson(
  Map<String, dynamic> json,
) => _VivekanandQuoteModel(
  id: json['_id'] as String? ?? '',
  quotesHindi: json['quotes_hindi'] as String? ?? '',
  quotesEnglish: json['quotes_english'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
  v: (json['__v'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$VivekanandQuoteModelToJson(
  _VivekanandQuoteModel instance,
) => <String, dynamic>{
  '_id': instance.id,
  'quotes_hindi': instance.quotesHindi,
  'quotes_english': instance.quotesEnglish,
  'createdAt': instance.createdAt,
  '__v': instance.v,
};
