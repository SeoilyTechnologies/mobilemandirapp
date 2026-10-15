// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TempleModel _$TempleModelFromJson(Map<String, dynamic> json) => _TempleModel(
  templeName: json['temple_name'] as String? ?? "",
  templeLocation: json['temple_location'] as String? ?? "",
  district: json['district'] as String? ?? "",
  state: json['state'] as String? ?? "",
  country: json['country'] as String? ?? "",
  address: json['address'] as String? ?? "",
  templeDescription: json['temple_description'] as String? ?? "",
  architecture: json['architecture'] as String? ?? "",
  templeImage: json['temple_image'] as String? ?? "",
);

Map<String, dynamic> _$TempleModelToJson(_TempleModel instance) =>
    <String, dynamic>{
      'temple_name': instance.templeName,
      'temple_location': instance.templeLocation,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'address': instance.address,
      'temple_description': instance.templeDescription,
      'architecture': instance.architecture,
      'temple_image': instance.templeImage,
    };
