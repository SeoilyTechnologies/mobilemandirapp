// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pitru_paksha_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PitruPakshaDetailResponse {

 bool get success; String get lang; PitruPakshaDetailData? get data;
/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaDetailResponseCopyWith<PitruPakshaDetailResponse> get copyWith => _$PitruPakshaDetailResponseCopyWithImpl<PitruPakshaDetailResponse>(this as PitruPakshaDetailResponse, _$identity);

  /// Serializes this PitruPakshaDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,data);

@override
String toString() {
  return 'PitruPakshaDetailResponse(success: $success, lang: $lang, data: $data)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaDetailResponseCopyWith<$Res>  {
  factory $PitruPakshaDetailResponseCopyWith(PitruPakshaDetailResponse value, $Res Function(PitruPakshaDetailResponse) _then) = _$PitruPakshaDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String lang, PitruPakshaDetailData? data
});


$PitruPakshaDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PitruPakshaDetailResponseCopyWithImpl<$Res>
    implements $PitruPakshaDetailResponseCopyWith<$Res> {
  _$PitruPakshaDetailResponseCopyWithImpl(this._self, this._then);

  final PitruPakshaDetailResponse _self;
  final $Res Function(PitruPakshaDetailResponse) _then;

/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PitruPakshaDetailData?,
  ));
}
/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PitruPakshaDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PitruPakshaDetailResponse].
extension PitruPakshaDetailResponsePatterns on PitruPakshaDetailResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPakshaDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPakshaDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPakshaDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String lang,  PitruPakshaDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse() when $default != null:
return $default(_that.success,_that.lang,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String lang,  PitruPakshaDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse():
return $default(_that.success,_that.lang,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String lang,  PitruPakshaDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaDetailResponse() when $default != null:
return $default(_that.success,_that.lang,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPakshaDetailResponse implements PitruPakshaDetailResponse {
  const _PitruPakshaDetailResponse({this.success = false, this.lang = '', this.data});
  factory _PitruPakshaDetailResponse.fromJson(Map<String, dynamic> json) => _$PitruPakshaDetailResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String lang;
@override final  PitruPakshaDetailData? data;

/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPakshaDetailResponseCopyWith<_PitruPakshaDetailResponse> get copyWith => __$PitruPakshaDetailResponseCopyWithImpl<_PitruPakshaDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPakshaDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPakshaDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,data);

@override
String toString() {
  return 'PitruPakshaDetailResponse(success: $success, lang: $lang, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PitruPakshaDetailResponseCopyWith<$Res> implements $PitruPakshaDetailResponseCopyWith<$Res> {
  factory _$PitruPakshaDetailResponseCopyWith(_PitruPakshaDetailResponse value, $Res Function(_PitruPakshaDetailResponse) _then) = __$PitruPakshaDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String lang, PitruPakshaDetailData? data
});


@override $PitruPakshaDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PitruPakshaDetailResponseCopyWithImpl<$Res>
    implements _$PitruPakshaDetailResponseCopyWith<$Res> {
  __$PitruPakshaDetailResponseCopyWithImpl(this._self, this._then);

  final _PitruPakshaDetailResponse _self;
  final $Res Function(_PitruPakshaDetailResponse) _then;

/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? data = freezed,}) {
  return _then(_PitruPakshaDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PitruPakshaDetailData?,
  ));
}

/// Create a copy of PitruPakshaDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PitruPakshaDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PitruPakshaDetailData {

 String get title; String get slug; String get date; String get dateDisplay; String get category; String get categoryLabel; List<String> get specialTags; bool get isPitruPaksha; bool get isShraddhaDay; bool get isSarvaPitruAmavasya; String get shraddhaType; PitruDetailMuhurats? get muhurats; PitruPanchangVivaran? get panchangVivaran; PitruAparahnaVyapiniTithi? get aparahnaVyapiniTithi; List<PitruRitual> get rituals; String get significance; String get forWhom; List<String> get vidhi; List<String> get dos; List<String> get donts; MuhuratTiming? get rahuKaal; PitruAarti? get aarti; String get note; PitruMeta? get meta;
/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaDetailDataCopyWith<PitruPakshaDetailData> get copyWith => _$PitruPakshaDetailDataCopyWithImpl<PitruPakshaDetailData>(this as PitruPakshaDetailData, _$identity);

  /// Serializes this PitruPakshaDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaDetailData&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryLabel, categoryLabel) || other.categoryLabel == categoryLabel)&&const DeepCollectionEquality().equals(other.specialTags, specialTags)&&(identical(other.isPitruPaksha, isPitruPaksha) || other.isPitruPaksha == isPitruPaksha)&&(identical(other.isShraddhaDay, isShraddhaDay) || other.isShraddhaDay == isShraddhaDay)&&(identical(other.isSarvaPitruAmavasya, isSarvaPitruAmavasya) || other.isSarvaPitruAmavasya == isSarvaPitruAmavasya)&&(identical(other.shraddhaType, shraddhaType) || other.shraddhaType == shraddhaType)&&(identical(other.muhurats, muhurats) || other.muhurats == muhurats)&&(identical(other.panchangVivaran, panchangVivaran) || other.panchangVivaran == panchangVivaran)&&(identical(other.aparahnaVyapiniTithi, aparahnaVyapiniTithi) || other.aparahnaVyapiniTithi == aparahnaVyapiniTithi)&&const DeepCollectionEquality().equals(other.rituals, rituals)&&(identical(other.significance, significance) || other.significance == significance)&&(identical(other.forWhom, forWhom) || other.forWhom == forWhom)&&const DeepCollectionEquality().equals(other.vidhi, vidhi)&&const DeepCollectionEquality().equals(other.dos, dos)&&const DeepCollectionEquality().equals(other.donts, donts)&&(identical(other.rahuKaal, rahuKaal) || other.rahuKaal == rahuKaal)&&(identical(other.aarti, aarti) || other.aarti == aarti)&&(identical(other.note, note) || other.note == note)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,slug,date,dateDisplay,category,categoryLabel,const DeepCollectionEquality().hash(specialTags),isPitruPaksha,isShraddhaDay,isSarvaPitruAmavasya,shraddhaType,muhurats,panchangVivaran,aparahnaVyapiniTithi,const DeepCollectionEquality().hash(rituals),significance,forWhom,const DeepCollectionEquality().hash(vidhi),const DeepCollectionEquality().hash(dos),const DeepCollectionEquality().hash(donts),rahuKaal,aarti,note,meta]);

@override
String toString() {
  return 'PitruPakshaDetailData(title: $title, slug: $slug, date: $date, dateDisplay: $dateDisplay, category: $category, categoryLabel: $categoryLabel, specialTags: $specialTags, isPitruPaksha: $isPitruPaksha, isShraddhaDay: $isShraddhaDay, isSarvaPitruAmavasya: $isSarvaPitruAmavasya, shraddhaType: $shraddhaType, muhurats: $muhurats, panchangVivaran: $panchangVivaran, aparahnaVyapiniTithi: $aparahnaVyapiniTithi, rituals: $rituals, significance: $significance, forWhom: $forWhom, vidhi: $vidhi, dos: $dos, donts: $donts, rahuKaal: $rahuKaal, aarti: $aarti, note: $note, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaDetailDataCopyWith<$Res>  {
  factory $PitruPakshaDetailDataCopyWith(PitruPakshaDetailData value, $Res Function(PitruPakshaDetailData) _then) = _$PitruPakshaDetailDataCopyWithImpl;
@useResult
$Res call({
 String title, String slug, String date, String dateDisplay, String category, String categoryLabel, List<String> specialTags, bool isPitruPaksha, bool isShraddhaDay, bool isSarvaPitruAmavasya, String shraddhaType, PitruDetailMuhurats? muhurats, PitruPanchangVivaran? panchangVivaran, PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi, List<PitruRitual> rituals, String significance, String forWhom, List<String> vidhi, List<String> dos, List<String> donts, MuhuratTiming? rahuKaal, PitruAarti? aarti, String note, PitruMeta? meta
});


$PitruDetailMuhuratsCopyWith<$Res>? get muhurats;$PitruPanchangVivaranCopyWith<$Res>? get panchangVivaran;$PitruAparahnaVyapiniTithiCopyWith<$Res>? get aparahnaVyapiniTithi;$MuhuratTimingCopyWith<$Res>? get rahuKaal;$PitruAartiCopyWith<$Res>? get aarti;$PitruMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PitruPakshaDetailDataCopyWithImpl<$Res>
    implements $PitruPakshaDetailDataCopyWith<$Res> {
  _$PitruPakshaDetailDataCopyWithImpl(this._self, this._then);

  final PitruPakshaDetailData _self;
  final $Res Function(PitruPakshaDetailData) _then;

/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? slug = null,Object? date = null,Object? dateDisplay = null,Object? category = null,Object? categoryLabel = null,Object? specialTags = null,Object? isPitruPaksha = null,Object? isShraddhaDay = null,Object? isSarvaPitruAmavasya = null,Object? shraddhaType = null,Object? muhurats = freezed,Object? panchangVivaran = freezed,Object? aparahnaVyapiniTithi = freezed,Object? rituals = null,Object? significance = null,Object? forWhom = null,Object? vidhi = null,Object? dos = null,Object? donts = null,Object? rahuKaal = freezed,Object? aarti = freezed,Object? note = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryLabel: null == categoryLabel ? _self.categoryLabel : categoryLabel // ignore: cast_nullable_to_non_nullable
as String,specialTags: null == specialTags ? _self.specialTags : specialTags // ignore: cast_nullable_to_non_nullable
as List<String>,isPitruPaksha: null == isPitruPaksha ? _self.isPitruPaksha : isPitruPaksha // ignore: cast_nullable_to_non_nullable
as bool,isShraddhaDay: null == isShraddhaDay ? _self.isShraddhaDay : isShraddhaDay // ignore: cast_nullable_to_non_nullable
as bool,isSarvaPitruAmavasya: null == isSarvaPitruAmavasya ? _self.isSarvaPitruAmavasya : isSarvaPitruAmavasya // ignore: cast_nullable_to_non_nullable
as bool,shraddhaType: null == shraddhaType ? _self.shraddhaType : shraddhaType // ignore: cast_nullable_to_non_nullable
as String,muhurats: freezed == muhurats ? _self.muhurats : muhurats // ignore: cast_nullable_to_non_nullable
as PitruDetailMuhurats?,panchangVivaran: freezed == panchangVivaran ? _self.panchangVivaran : panchangVivaran // ignore: cast_nullable_to_non_nullable
as PitruPanchangVivaran?,aparahnaVyapiniTithi: freezed == aparahnaVyapiniTithi ? _self.aparahnaVyapiniTithi : aparahnaVyapiniTithi // ignore: cast_nullable_to_non_nullable
as PitruAparahnaVyapiniTithi?,rituals: null == rituals ? _self.rituals : rituals // ignore: cast_nullable_to_non_nullable
as List<PitruRitual>,significance: null == significance ? _self.significance : significance // ignore: cast_nullable_to_non_nullable
as String,forWhom: null == forWhom ? _self.forWhom : forWhom // ignore: cast_nullable_to_non_nullable
as String,vidhi: null == vidhi ? _self.vidhi : vidhi // ignore: cast_nullable_to_non_nullable
as List<String>,dos: null == dos ? _self.dos : dos // ignore: cast_nullable_to_non_nullable
as List<String>,donts: null == donts ? _self.donts : donts // ignore: cast_nullable_to_non_nullable
as List<String>,rahuKaal: freezed == rahuKaal ? _self.rahuKaal : rahuKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aarti: freezed == aarti ? _self.aarti : aarti // ignore: cast_nullable_to_non_nullable
as PitruAarti?,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PitruMeta?,
  ));
}
/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruDetailMuhuratsCopyWith<$Res>? get muhurats {
    if (_self.muhurats == null) {
    return null;
  }

  return $PitruDetailMuhuratsCopyWith<$Res>(_self.muhurats!, (value) {
    return _then(_self.copyWith(muhurats: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPanchangVivaranCopyWith<$Res>? get panchangVivaran {
    if (_self.panchangVivaran == null) {
    return null;
  }

  return $PitruPanchangVivaranCopyWith<$Res>(_self.panchangVivaran!, (value) {
    return _then(_self.copyWith(panchangVivaran: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruAparahnaVyapiniTithiCopyWith<$Res>? get aparahnaVyapiniTithi {
    if (_self.aparahnaVyapiniTithi == null) {
    return null;
  }

  return $PitruAparahnaVyapiniTithiCopyWith<$Res>(_self.aparahnaVyapiniTithi!, (value) {
    return _then(_self.copyWith(aparahnaVyapiniTithi: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get rahuKaal {
    if (_self.rahuKaal == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.rahuKaal!, (value) {
    return _then(_self.copyWith(rahuKaal: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruAartiCopyWith<$Res>? get aarti {
    if (_self.aarti == null) {
    return null;
  }

  return $PitruAartiCopyWith<$Res>(_self.aarti!, (value) {
    return _then(_self.copyWith(aarti: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PitruMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PitruPakshaDetailData].
extension PitruPakshaDetailDataPatterns on PitruPakshaDetailData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPakshaDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPakshaDetailData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPakshaDetailData value)  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaDetailData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPakshaDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaDetailData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String slug,  String date,  String dateDisplay,  String category,  String categoryLabel,  List<String> specialTags,  bool isPitruPaksha,  bool isShraddhaDay,  bool isSarvaPitruAmavasya,  String shraddhaType,  PitruDetailMuhurats? muhurats,  PitruPanchangVivaran? panchangVivaran,  PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi,  List<PitruRitual> rituals,  String significance,  String forWhom,  List<String> vidhi,  List<String> dos,  List<String> donts,  MuhuratTiming? rahuKaal,  PitruAarti? aarti,  String note,  PitruMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPakshaDetailData() when $default != null:
return $default(_that.title,_that.slug,_that.date,_that.dateDisplay,_that.category,_that.categoryLabel,_that.specialTags,_that.isPitruPaksha,_that.isShraddhaDay,_that.isSarvaPitruAmavasya,_that.shraddhaType,_that.muhurats,_that.panchangVivaran,_that.aparahnaVyapiniTithi,_that.rituals,_that.significance,_that.forWhom,_that.vidhi,_that.dos,_that.donts,_that.rahuKaal,_that.aarti,_that.note,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String slug,  String date,  String dateDisplay,  String category,  String categoryLabel,  List<String> specialTags,  bool isPitruPaksha,  bool isShraddhaDay,  bool isSarvaPitruAmavasya,  String shraddhaType,  PitruDetailMuhurats? muhurats,  PitruPanchangVivaran? panchangVivaran,  PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi,  List<PitruRitual> rituals,  String significance,  String forWhom,  List<String> vidhi,  List<String> dos,  List<String> donts,  MuhuratTiming? rahuKaal,  PitruAarti? aarti,  String note,  PitruMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaDetailData():
return $default(_that.title,_that.slug,_that.date,_that.dateDisplay,_that.category,_that.categoryLabel,_that.specialTags,_that.isPitruPaksha,_that.isShraddhaDay,_that.isSarvaPitruAmavasya,_that.shraddhaType,_that.muhurats,_that.panchangVivaran,_that.aparahnaVyapiniTithi,_that.rituals,_that.significance,_that.forWhom,_that.vidhi,_that.dos,_that.donts,_that.rahuKaal,_that.aarti,_that.note,_that.meta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String slug,  String date,  String dateDisplay,  String category,  String categoryLabel,  List<String> specialTags,  bool isPitruPaksha,  bool isShraddhaDay,  bool isSarvaPitruAmavasya,  String shraddhaType,  PitruDetailMuhurats? muhurats,  PitruPanchangVivaran? panchangVivaran,  PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi,  List<PitruRitual> rituals,  String significance,  String forWhom,  List<String> vidhi,  List<String> dos,  List<String> donts,  MuhuratTiming? rahuKaal,  PitruAarti? aarti,  String note,  PitruMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaDetailData() when $default != null:
return $default(_that.title,_that.slug,_that.date,_that.dateDisplay,_that.category,_that.categoryLabel,_that.specialTags,_that.isPitruPaksha,_that.isShraddhaDay,_that.isSarvaPitruAmavasya,_that.shraddhaType,_that.muhurats,_that.panchangVivaran,_that.aparahnaVyapiniTithi,_that.rituals,_that.significance,_that.forWhom,_that.vidhi,_that.dos,_that.donts,_that.rahuKaal,_that.aarti,_that.note,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPakshaDetailData implements PitruPakshaDetailData {
  const _PitruPakshaDetailData({this.title = '', this.slug = '', this.date = '', this.dateDisplay = '', this.category = '', this.categoryLabel = '', final  List<String> specialTags = const [], this.isPitruPaksha = false, this.isShraddhaDay = false, this.isSarvaPitruAmavasya = false, this.shraddhaType = '', this.muhurats, this.panchangVivaran, this.aparahnaVyapiniTithi, final  List<PitruRitual> rituals = const [], this.significance = '', this.forWhom = '', final  List<String> vidhi = const [], final  List<String> dos = const [], final  List<String> donts = const [], this.rahuKaal, this.aarti, this.note = '', this.meta}): _specialTags = specialTags,_rituals = rituals,_vidhi = vidhi,_dos = dos,_donts = donts;
  factory _PitruPakshaDetailData.fromJson(Map<String, dynamic> json) => _$PitruPakshaDetailDataFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String date;
@override@JsonKey() final  String dateDisplay;
@override@JsonKey() final  String category;
@override@JsonKey() final  String categoryLabel;
 final  List<String> _specialTags;
@override@JsonKey() List<String> get specialTags {
  if (_specialTags is EqualUnmodifiableListView) return _specialTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialTags);
}

@override@JsonKey() final  bool isPitruPaksha;
@override@JsonKey() final  bool isShraddhaDay;
@override@JsonKey() final  bool isSarvaPitruAmavasya;
@override@JsonKey() final  String shraddhaType;
@override final  PitruDetailMuhurats? muhurats;
@override final  PitruPanchangVivaran? panchangVivaran;
@override final  PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi;
 final  List<PitruRitual> _rituals;
@override@JsonKey() List<PitruRitual> get rituals {
  if (_rituals is EqualUnmodifiableListView) return _rituals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rituals);
}

@override@JsonKey() final  String significance;
@override@JsonKey() final  String forWhom;
 final  List<String> _vidhi;
@override@JsonKey() List<String> get vidhi {
  if (_vidhi is EqualUnmodifiableListView) return _vidhi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vidhi);
}

 final  List<String> _dos;
@override@JsonKey() List<String> get dos {
  if (_dos is EqualUnmodifiableListView) return _dos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dos);
}

 final  List<String> _donts;
@override@JsonKey() List<String> get donts {
  if (_donts is EqualUnmodifiableListView) return _donts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_donts);
}

@override final  MuhuratTiming? rahuKaal;
@override final  PitruAarti? aarti;
@override@JsonKey() final  String note;
@override final  PitruMeta? meta;

/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPakshaDetailDataCopyWith<_PitruPakshaDetailData> get copyWith => __$PitruPakshaDetailDataCopyWithImpl<_PitruPakshaDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPakshaDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPakshaDetailData&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryLabel, categoryLabel) || other.categoryLabel == categoryLabel)&&const DeepCollectionEquality().equals(other._specialTags, _specialTags)&&(identical(other.isPitruPaksha, isPitruPaksha) || other.isPitruPaksha == isPitruPaksha)&&(identical(other.isShraddhaDay, isShraddhaDay) || other.isShraddhaDay == isShraddhaDay)&&(identical(other.isSarvaPitruAmavasya, isSarvaPitruAmavasya) || other.isSarvaPitruAmavasya == isSarvaPitruAmavasya)&&(identical(other.shraddhaType, shraddhaType) || other.shraddhaType == shraddhaType)&&(identical(other.muhurats, muhurats) || other.muhurats == muhurats)&&(identical(other.panchangVivaran, panchangVivaran) || other.panchangVivaran == panchangVivaran)&&(identical(other.aparahnaVyapiniTithi, aparahnaVyapiniTithi) || other.aparahnaVyapiniTithi == aparahnaVyapiniTithi)&&const DeepCollectionEquality().equals(other._rituals, _rituals)&&(identical(other.significance, significance) || other.significance == significance)&&(identical(other.forWhom, forWhom) || other.forWhom == forWhom)&&const DeepCollectionEquality().equals(other._vidhi, _vidhi)&&const DeepCollectionEquality().equals(other._dos, _dos)&&const DeepCollectionEquality().equals(other._donts, _donts)&&(identical(other.rahuKaal, rahuKaal) || other.rahuKaal == rahuKaal)&&(identical(other.aarti, aarti) || other.aarti == aarti)&&(identical(other.note, note) || other.note == note)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,slug,date,dateDisplay,category,categoryLabel,const DeepCollectionEquality().hash(_specialTags),isPitruPaksha,isShraddhaDay,isSarvaPitruAmavasya,shraddhaType,muhurats,panchangVivaran,aparahnaVyapiniTithi,const DeepCollectionEquality().hash(_rituals),significance,forWhom,const DeepCollectionEquality().hash(_vidhi),const DeepCollectionEquality().hash(_dos),const DeepCollectionEquality().hash(_donts),rahuKaal,aarti,note,meta]);

@override
String toString() {
  return 'PitruPakshaDetailData(title: $title, slug: $slug, date: $date, dateDisplay: $dateDisplay, category: $category, categoryLabel: $categoryLabel, specialTags: $specialTags, isPitruPaksha: $isPitruPaksha, isShraddhaDay: $isShraddhaDay, isSarvaPitruAmavasya: $isSarvaPitruAmavasya, shraddhaType: $shraddhaType, muhurats: $muhurats, panchangVivaran: $panchangVivaran, aparahnaVyapiniTithi: $aparahnaVyapiniTithi, rituals: $rituals, significance: $significance, forWhom: $forWhom, vidhi: $vidhi, dos: $dos, donts: $donts, rahuKaal: $rahuKaal, aarti: $aarti, note: $note, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PitruPakshaDetailDataCopyWith<$Res> implements $PitruPakshaDetailDataCopyWith<$Res> {
  factory _$PitruPakshaDetailDataCopyWith(_PitruPakshaDetailData value, $Res Function(_PitruPakshaDetailData) _then) = __$PitruPakshaDetailDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String slug, String date, String dateDisplay, String category, String categoryLabel, List<String> specialTags, bool isPitruPaksha, bool isShraddhaDay, bool isSarvaPitruAmavasya, String shraddhaType, PitruDetailMuhurats? muhurats, PitruPanchangVivaran? panchangVivaran, PitruAparahnaVyapiniTithi? aparahnaVyapiniTithi, List<PitruRitual> rituals, String significance, String forWhom, List<String> vidhi, List<String> dos, List<String> donts, MuhuratTiming? rahuKaal, PitruAarti? aarti, String note, PitruMeta? meta
});


@override $PitruDetailMuhuratsCopyWith<$Res>? get muhurats;@override $PitruPanchangVivaranCopyWith<$Res>? get panchangVivaran;@override $PitruAparahnaVyapiniTithiCopyWith<$Res>? get aparahnaVyapiniTithi;@override $MuhuratTimingCopyWith<$Res>? get rahuKaal;@override $PitruAartiCopyWith<$Res>? get aarti;@override $PitruMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PitruPakshaDetailDataCopyWithImpl<$Res>
    implements _$PitruPakshaDetailDataCopyWith<$Res> {
  __$PitruPakshaDetailDataCopyWithImpl(this._self, this._then);

  final _PitruPakshaDetailData _self;
  final $Res Function(_PitruPakshaDetailData) _then;

/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? slug = null,Object? date = null,Object? dateDisplay = null,Object? category = null,Object? categoryLabel = null,Object? specialTags = null,Object? isPitruPaksha = null,Object? isShraddhaDay = null,Object? isSarvaPitruAmavasya = null,Object? shraddhaType = null,Object? muhurats = freezed,Object? panchangVivaran = freezed,Object? aparahnaVyapiniTithi = freezed,Object? rituals = null,Object? significance = null,Object? forWhom = null,Object? vidhi = null,Object? dos = null,Object? donts = null,Object? rahuKaal = freezed,Object? aarti = freezed,Object? note = null,Object? meta = freezed,}) {
  return _then(_PitruPakshaDetailData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryLabel: null == categoryLabel ? _self.categoryLabel : categoryLabel // ignore: cast_nullable_to_non_nullable
as String,specialTags: null == specialTags ? _self._specialTags : specialTags // ignore: cast_nullable_to_non_nullable
as List<String>,isPitruPaksha: null == isPitruPaksha ? _self.isPitruPaksha : isPitruPaksha // ignore: cast_nullable_to_non_nullable
as bool,isShraddhaDay: null == isShraddhaDay ? _self.isShraddhaDay : isShraddhaDay // ignore: cast_nullable_to_non_nullable
as bool,isSarvaPitruAmavasya: null == isSarvaPitruAmavasya ? _self.isSarvaPitruAmavasya : isSarvaPitruAmavasya // ignore: cast_nullable_to_non_nullable
as bool,shraddhaType: null == shraddhaType ? _self.shraddhaType : shraddhaType // ignore: cast_nullable_to_non_nullable
as String,muhurats: freezed == muhurats ? _self.muhurats : muhurats // ignore: cast_nullable_to_non_nullable
as PitruDetailMuhurats?,panchangVivaran: freezed == panchangVivaran ? _self.panchangVivaran : panchangVivaran // ignore: cast_nullable_to_non_nullable
as PitruPanchangVivaran?,aparahnaVyapiniTithi: freezed == aparahnaVyapiniTithi ? _self.aparahnaVyapiniTithi : aparahnaVyapiniTithi // ignore: cast_nullable_to_non_nullable
as PitruAparahnaVyapiniTithi?,rituals: null == rituals ? _self._rituals : rituals // ignore: cast_nullable_to_non_nullable
as List<PitruRitual>,significance: null == significance ? _self.significance : significance // ignore: cast_nullable_to_non_nullable
as String,forWhom: null == forWhom ? _self.forWhom : forWhom // ignore: cast_nullable_to_non_nullable
as String,vidhi: null == vidhi ? _self._vidhi : vidhi // ignore: cast_nullable_to_non_nullable
as List<String>,dos: null == dos ? _self._dos : dos // ignore: cast_nullable_to_non_nullable
as List<String>,donts: null == donts ? _self._donts : donts // ignore: cast_nullable_to_non_nullable
as List<String>,rahuKaal: freezed == rahuKaal ? _self.rahuKaal : rahuKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aarti: freezed == aarti ? _self.aarti : aarti // ignore: cast_nullable_to_non_nullable
as PitruAarti?,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PitruMeta?,
  ));
}

/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruDetailMuhuratsCopyWith<$Res>? get muhurats {
    if (_self.muhurats == null) {
    return null;
  }

  return $PitruDetailMuhuratsCopyWith<$Res>(_self.muhurats!, (value) {
    return _then(_self.copyWith(muhurats: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPanchangVivaranCopyWith<$Res>? get panchangVivaran {
    if (_self.panchangVivaran == null) {
    return null;
  }

  return $PitruPanchangVivaranCopyWith<$Res>(_self.panchangVivaran!, (value) {
    return _then(_self.copyWith(panchangVivaran: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruAparahnaVyapiniTithiCopyWith<$Res>? get aparahnaVyapiniTithi {
    if (_self.aparahnaVyapiniTithi == null) {
    return null;
  }

  return $PitruAparahnaVyapiniTithiCopyWith<$Res>(_self.aparahnaVyapiniTithi!, (value) {
    return _then(_self.copyWith(aparahnaVyapiniTithi: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get rahuKaal {
    if (_self.rahuKaal == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.rahuKaal!, (value) {
    return _then(_self.copyWith(rahuKaal: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruAartiCopyWith<$Res>? get aarti {
    if (_self.aarti == null) {
    return null;
  }

  return $PitruAartiCopyWith<$Res>(_self.aarti!, (value) {
    return _then(_self.copyWith(aarti: value));
  });
}/// Create a copy of PitruPakshaDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PitruMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$PitruDetailMuhurats {

 MuhuratTiming? get kutupMuhurat; MuhuratTiming? get rohinaMuhurat; MuhuratTiming? get aparahnaKaal;
/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruDetailMuhuratsCopyWith<PitruDetailMuhurats> get copyWith => _$PitruDetailMuhuratsCopyWithImpl<PitruDetailMuhurats>(this as PitruDetailMuhurats, _$identity);

  /// Serializes this PitruDetailMuhurats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruDetailMuhurats&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.rohinaMuhurat, rohinaMuhurat) || other.rohinaMuhurat == rohinaMuhurat)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kutupMuhurat,rohinaMuhurat,aparahnaKaal);

@override
String toString() {
  return 'PitruDetailMuhurats(kutupMuhurat: $kutupMuhurat, rohinaMuhurat: $rohinaMuhurat, aparahnaKaal: $aparahnaKaal)';
}


}

/// @nodoc
abstract mixin class $PitruDetailMuhuratsCopyWith<$Res>  {
  factory $PitruDetailMuhuratsCopyWith(PitruDetailMuhurats value, $Res Function(PitruDetailMuhurats) _then) = _$PitruDetailMuhuratsCopyWithImpl;
@useResult
$Res call({
 MuhuratTiming? kutupMuhurat, MuhuratTiming? rohinaMuhurat, MuhuratTiming? aparahnaKaal
});


$MuhuratTimingCopyWith<$Res>? get kutupMuhurat;$MuhuratTimingCopyWith<$Res>? get rohinaMuhurat;$MuhuratTimingCopyWith<$Res>? get aparahnaKaal;

}
/// @nodoc
class _$PitruDetailMuhuratsCopyWithImpl<$Res>
    implements $PitruDetailMuhuratsCopyWith<$Res> {
  _$PitruDetailMuhuratsCopyWithImpl(this._self, this._then);

  final PitruDetailMuhurats _self;
  final $Res Function(PitruDetailMuhurats) _then;

/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kutupMuhurat = freezed,Object? rohinaMuhurat = freezed,Object? aparahnaKaal = freezed,}) {
  return _then(_self.copyWith(
kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,rohinaMuhurat: freezed == rohinaMuhurat ? _self.rohinaMuhurat : rohinaMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,
  ));
}
/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get kutupMuhurat {
    if (_self.kutupMuhurat == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.kutupMuhurat!, (value) {
    return _then(_self.copyWith(kutupMuhurat: value));
  });
}/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get rohinaMuhurat {
    if (_self.rohinaMuhurat == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.rohinaMuhurat!, (value) {
    return _then(_self.copyWith(rohinaMuhurat: value));
  });
}/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get aparahnaKaal {
    if (_self.aparahnaKaal == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.aparahnaKaal!, (value) {
    return _then(_self.copyWith(aparahnaKaal: value));
  });
}
}


/// Adds pattern-matching-related methods to [PitruDetailMuhurats].
extension PitruDetailMuhuratsPatterns on PitruDetailMuhurats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruDetailMuhurats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruDetailMuhurats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruDetailMuhurats value)  $default,){
final _that = this;
switch (_that) {
case _PitruDetailMuhurats():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruDetailMuhurats value)?  $default,){
final _that = this;
switch (_that) {
case _PitruDetailMuhurats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MuhuratTiming? kutupMuhurat,  MuhuratTiming? rohinaMuhurat,  MuhuratTiming? aparahnaKaal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruDetailMuhurats() when $default != null:
return $default(_that.kutupMuhurat,_that.rohinaMuhurat,_that.aparahnaKaal);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MuhuratTiming? kutupMuhurat,  MuhuratTiming? rohinaMuhurat,  MuhuratTiming? aparahnaKaal)  $default,) {final _that = this;
switch (_that) {
case _PitruDetailMuhurats():
return $default(_that.kutupMuhurat,_that.rohinaMuhurat,_that.aparahnaKaal);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MuhuratTiming? kutupMuhurat,  MuhuratTiming? rohinaMuhurat,  MuhuratTiming? aparahnaKaal)?  $default,) {final _that = this;
switch (_that) {
case _PitruDetailMuhurats() when $default != null:
return $default(_that.kutupMuhurat,_that.rohinaMuhurat,_that.aparahnaKaal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruDetailMuhurats implements PitruDetailMuhurats {
  const _PitruDetailMuhurats({this.kutupMuhurat, this.rohinaMuhurat, this.aparahnaKaal});
  factory _PitruDetailMuhurats.fromJson(Map<String, dynamic> json) => _$PitruDetailMuhuratsFromJson(json);

@override final  MuhuratTiming? kutupMuhurat;
@override final  MuhuratTiming? rohinaMuhurat;
@override final  MuhuratTiming? aparahnaKaal;

/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruDetailMuhuratsCopyWith<_PitruDetailMuhurats> get copyWith => __$PitruDetailMuhuratsCopyWithImpl<_PitruDetailMuhurats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruDetailMuhuratsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruDetailMuhurats&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.rohinaMuhurat, rohinaMuhurat) || other.rohinaMuhurat == rohinaMuhurat)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kutupMuhurat,rohinaMuhurat,aparahnaKaal);

@override
String toString() {
  return 'PitruDetailMuhurats(kutupMuhurat: $kutupMuhurat, rohinaMuhurat: $rohinaMuhurat, aparahnaKaal: $aparahnaKaal)';
}


}

/// @nodoc
abstract mixin class _$PitruDetailMuhuratsCopyWith<$Res> implements $PitruDetailMuhuratsCopyWith<$Res> {
  factory _$PitruDetailMuhuratsCopyWith(_PitruDetailMuhurats value, $Res Function(_PitruDetailMuhurats) _then) = __$PitruDetailMuhuratsCopyWithImpl;
@override @useResult
$Res call({
 MuhuratTiming? kutupMuhurat, MuhuratTiming? rohinaMuhurat, MuhuratTiming? aparahnaKaal
});


@override $MuhuratTimingCopyWith<$Res>? get kutupMuhurat;@override $MuhuratTimingCopyWith<$Res>? get rohinaMuhurat;@override $MuhuratTimingCopyWith<$Res>? get aparahnaKaal;

}
/// @nodoc
class __$PitruDetailMuhuratsCopyWithImpl<$Res>
    implements _$PitruDetailMuhuratsCopyWith<$Res> {
  __$PitruDetailMuhuratsCopyWithImpl(this._self, this._then);

  final _PitruDetailMuhurats _self;
  final $Res Function(_PitruDetailMuhurats) _then;

/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kutupMuhurat = freezed,Object? rohinaMuhurat = freezed,Object? aparahnaKaal = freezed,}) {
  return _then(_PitruDetailMuhurats(
kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,rohinaMuhurat: freezed == rohinaMuhurat ? _self.rohinaMuhurat : rohinaMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,
  ));
}

/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get kutupMuhurat {
    if (_self.kutupMuhurat == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.kutupMuhurat!, (value) {
    return _then(_self.copyWith(kutupMuhurat: value));
  });
}/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get rohinaMuhurat {
    if (_self.rohinaMuhurat == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.rohinaMuhurat!, (value) {
    return _then(_self.copyWith(rohinaMuhurat: value));
  });
}/// Create a copy of PitruDetailMuhurats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<$Res>? get aparahnaKaal {
    if (_self.aparahnaKaal == null) {
    return null;
  }

  return $MuhuratTimingCopyWith<$Res>(_self.aparahnaKaal!, (value) {
    return _then(_self.copyWith(aparahnaKaal: value));
  });
}
}


/// @nodoc
mixin _$PitruPanchangVivaran {

 String get tithi; String get paksha; String get nakshatra; String get yoga; String get karan; String get day;
/// Create a copy of PitruPanchangVivaran
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPanchangVivaranCopyWith<PitruPanchangVivaran> get copyWith => _$PitruPanchangVivaranCopyWithImpl<PitruPanchangVivaran>(this as PitruPanchangVivaran, _$identity);

  /// Serializes this PitruPanchangVivaran to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPanchangVivaran&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yoga, yoga) || other.yoga == yoga)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tithi,paksha,nakshatra,yoga,karan,day);

@override
String toString() {
  return 'PitruPanchangVivaran(tithi: $tithi, paksha: $paksha, nakshatra: $nakshatra, yoga: $yoga, karan: $karan, day: $day)';
}


}

/// @nodoc
abstract mixin class $PitruPanchangVivaranCopyWith<$Res>  {
  factory $PitruPanchangVivaranCopyWith(PitruPanchangVivaran value, $Res Function(PitruPanchangVivaran) _then) = _$PitruPanchangVivaranCopyWithImpl;
@useResult
$Res call({
 String tithi, String paksha, String nakshatra, String yoga, String karan, String day
});




}
/// @nodoc
class _$PitruPanchangVivaranCopyWithImpl<$Res>
    implements $PitruPanchangVivaranCopyWith<$Res> {
  _$PitruPanchangVivaranCopyWithImpl(this._self, this._then);

  final PitruPanchangVivaran _self;
  final $Res Function(PitruPanchangVivaran) _then;

/// Create a copy of PitruPanchangVivaran
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tithi = null,Object? paksha = null,Object? nakshatra = null,Object? yoga = null,Object? karan = null,Object? day = null,}) {
  return _then(_self.copyWith(
tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yoga: null == yoga ? _self.yoga : yoga // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruPanchangVivaran].
extension PitruPanchangVivaranPatterns on PitruPanchangVivaran {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPanchangVivaran value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPanchangVivaran() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPanchangVivaran value)  $default,){
final _that = this;
switch (_that) {
case _PitruPanchangVivaran():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPanchangVivaran value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPanchangVivaran() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tithi,  String paksha,  String nakshatra,  String yoga,  String karan,  String day)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPanchangVivaran() when $default != null:
return $default(_that.tithi,_that.paksha,_that.nakshatra,_that.yoga,_that.karan,_that.day);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tithi,  String paksha,  String nakshatra,  String yoga,  String karan,  String day)  $default,) {final _that = this;
switch (_that) {
case _PitruPanchangVivaran():
return $default(_that.tithi,_that.paksha,_that.nakshatra,_that.yoga,_that.karan,_that.day);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tithi,  String paksha,  String nakshatra,  String yoga,  String karan,  String day)?  $default,) {final _that = this;
switch (_that) {
case _PitruPanchangVivaran() when $default != null:
return $default(_that.tithi,_that.paksha,_that.nakshatra,_that.yoga,_that.karan,_that.day);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPanchangVivaran implements PitruPanchangVivaran {
  const _PitruPanchangVivaran({this.tithi = '', this.paksha = '', this.nakshatra = '', this.yoga = '', this.karan = '', this.day = ''});
  factory _PitruPanchangVivaran.fromJson(Map<String, dynamic> json) => _$PitruPanchangVivaranFromJson(json);

@override@JsonKey() final  String tithi;
@override@JsonKey() final  String paksha;
@override@JsonKey() final  String nakshatra;
@override@JsonKey() final  String yoga;
@override@JsonKey() final  String karan;
@override@JsonKey() final  String day;

/// Create a copy of PitruPanchangVivaran
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPanchangVivaranCopyWith<_PitruPanchangVivaran> get copyWith => __$PitruPanchangVivaranCopyWithImpl<_PitruPanchangVivaran>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPanchangVivaranToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPanchangVivaran&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yoga, yoga) || other.yoga == yoga)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tithi,paksha,nakshatra,yoga,karan,day);

@override
String toString() {
  return 'PitruPanchangVivaran(tithi: $tithi, paksha: $paksha, nakshatra: $nakshatra, yoga: $yoga, karan: $karan, day: $day)';
}


}

/// @nodoc
abstract mixin class _$PitruPanchangVivaranCopyWith<$Res> implements $PitruPanchangVivaranCopyWith<$Res> {
  factory _$PitruPanchangVivaranCopyWith(_PitruPanchangVivaran value, $Res Function(_PitruPanchangVivaran) _then) = __$PitruPanchangVivaranCopyWithImpl;
@override @useResult
$Res call({
 String tithi, String paksha, String nakshatra, String yoga, String karan, String day
});




}
/// @nodoc
class __$PitruPanchangVivaranCopyWithImpl<$Res>
    implements _$PitruPanchangVivaranCopyWith<$Res> {
  __$PitruPanchangVivaranCopyWithImpl(this._self, this._then);

  final _PitruPanchangVivaran _self;
  final $Res Function(_PitruPanchangVivaran) _then;

/// Create a copy of PitruPanchangVivaran
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tithi = null,Object? paksha = null,Object? nakshatra = null,Object? yoga = null,Object? karan = null,Object? day = null,}) {
  return _then(_PitruPanchangVivaran(
tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yoga: null == yoga ? _self.yoga : yoga // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PitruAparahnaVyapiniTithi {

 String get name; int get index; String get paksha;
/// Create a copy of PitruAparahnaVyapiniTithi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruAparahnaVyapiniTithiCopyWith<PitruAparahnaVyapiniTithi> get copyWith => _$PitruAparahnaVyapiniTithiCopyWithImpl<PitruAparahnaVyapiniTithi>(this as PitruAparahnaVyapiniTithi, _$identity);

  /// Serializes this PitruAparahnaVyapiniTithi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruAparahnaVyapiniTithi&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.paksha, paksha) || other.paksha == paksha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,index,paksha);

@override
String toString() {
  return 'PitruAparahnaVyapiniTithi(name: $name, index: $index, paksha: $paksha)';
}


}

/// @nodoc
abstract mixin class $PitruAparahnaVyapiniTithiCopyWith<$Res>  {
  factory $PitruAparahnaVyapiniTithiCopyWith(PitruAparahnaVyapiniTithi value, $Res Function(PitruAparahnaVyapiniTithi) _then) = _$PitruAparahnaVyapiniTithiCopyWithImpl;
@useResult
$Res call({
 String name, int index, String paksha
});




}
/// @nodoc
class _$PitruAparahnaVyapiniTithiCopyWithImpl<$Res>
    implements $PitruAparahnaVyapiniTithiCopyWith<$Res> {
  _$PitruAparahnaVyapiniTithiCopyWithImpl(this._self, this._then);

  final PitruAparahnaVyapiniTithi _self;
  final $Res Function(PitruAparahnaVyapiniTithi) _then;

/// Create a copy of PitruAparahnaVyapiniTithi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? index = null,Object? paksha = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruAparahnaVyapiniTithi].
extension PitruAparahnaVyapiniTithiPatterns on PitruAparahnaVyapiniTithi {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruAparahnaVyapiniTithi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruAparahnaVyapiniTithi value)  $default,){
final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruAparahnaVyapiniTithi value)?  $default,){
final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int index,  String paksha)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi() when $default != null:
return $default(_that.name,_that.index,_that.paksha);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int index,  String paksha)  $default,) {final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi():
return $default(_that.name,_that.index,_that.paksha);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int index,  String paksha)?  $default,) {final _that = this;
switch (_that) {
case _PitruAparahnaVyapiniTithi() when $default != null:
return $default(_that.name,_that.index,_that.paksha);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruAparahnaVyapiniTithi implements PitruAparahnaVyapiniTithi {
  const _PitruAparahnaVyapiniTithi({this.name = '', this.index = 0, this.paksha = ''});
  factory _PitruAparahnaVyapiniTithi.fromJson(Map<String, dynamic> json) => _$PitruAparahnaVyapiniTithiFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  int index;
@override@JsonKey() final  String paksha;

/// Create a copy of PitruAparahnaVyapiniTithi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruAparahnaVyapiniTithiCopyWith<_PitruAparahnaVyapiniTithi> get copyWith => __$PitruAparahnaVyapiniTithiCopyWithImpl<_PitruAparahnaVyapiniTithi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruAparahnaVyapiniTithiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruAparahnaVyapiniTithi&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.paksha, paksha) || other.paksha == paksha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,index,paksha);

@override
String toString() {
  return 'PitruAparahnaVyapiniTithi(name: $name, index: $index, paksha: $paksha)';
}


}

/// @nodoc
abstract mixin class _$PitruAparahnaVyapiniTithiCopyWith<$Res> implements $PitruAparahnaVyapiniTithiCopyWith<$Res> {
  factory _$PitruAparahnaVyapiniTithiCopyWith(_PitruAparahnaVyapiniTithi value, $Res Function(_PitruAparahnaVyapiniTithi) _then) = __$PitruAparahnaVyapiniTithiCopyWithImpl;
@override @useResult
$Res call({
 String name, int index, String paksha
});




}
/// @nodoc
class __$PitruAparahnaVyapiniTithiCopyWithImpl<$Res>
    implements _$PitruAparahnaVyapiniTithiCopyWith<$Res> {
  __$PitruAparahnaVyapiniTithiCopyWithImpl(this._self, this._then);

  final _PitruAparahnaVyapiniTithi _self;
  final $Res Function(_PitruAparahnaVyapiniTithi) _then;

/// Create a copy of PitruAparahnaVyapiniTithi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? index = null,Object? paksha = null,}) {
  return _then(_PitruAparahnaVyapiniTithi(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PitruRitual {

 String get id; String get title; String get subtitle;
/// Create a copy of PitruRitual
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruRitualCopyWith<PitruRitual> get copyWith => _$PitruRitualCopyWithImpl<PitruRitual>(this as PitruRitual, _$identity);

  /// Serializes this PitruRitual to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruRitual&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle);

@override
String toString() {
  return 'PitruRitual(id: $id, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class $PitruRitualCopyWith<$Res>  {
  factory $PitruRitualCopyWith(PitruRitual value, $Res Function(PitruRitual) _then) = _$PitruRitualCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subtitle
});




}
/// @nodoc
class _$PitruRitualCopyWithImpl<$Res>
    implements $PitruRitualCopyWith<$Res> {
  _$PitruRitualCopyWithImpl(this._self, this._then);

  final PitruRitual _self;
  final $Res Function(PitruRitual) _then;

/// Create a copy of PitruRitual
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruRitual].
extension PitruRitualPatterns on PitruRitual {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruRitual value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruRitual() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruRitual value)  $default,){
final _that = this;
switch (_that) {
case _PitruRitual():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruRitual value)?  $default,){
final _that = this;
switch (_that) {
case _PitruRitual() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruRitual() when $default != null:
return $default(_that.id,_that.title,_that.subtitle);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle)  $default,) {final _that = this;
switch (_that) {
case _PitruRitual():
return $default(_that.id,_that.title,_that.subtitle);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subtitle)?  $default,) {final _that = this;
switch (_that) {
case _PitruRitual() when $default != null:
return $default(_that.id,_that.title,_that.subtitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruRitual implements PitruRitual {
  const _PitruRitual({this.id = '', this.title = '', this.subtitle = ''});
  factory _PitruRitual.fromJson(Map<String, dynamic> json) => _$PitruRitualFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String subtitle;

/// Create a copy of PitruRitual
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruRitualCopyWith<_PitruRitual> get copyWith => __$PitruRitualCopyWithImpl<_PitruRitual>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruRitualToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruRitual&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle);

@override
String toString() {
  return 'PitruRitual(id: $id, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class _$PitruRitualCopyWith<$Res> implements $PitruRitualCopyWith<$Res> {
  factory _$PitruRitualCopyWith(_PitruRitual value, $Res Function(_PitruRitual) _then) = __$PitruRitualCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subtitle
});




}
/// @nodoc
class __$PitruRitualCopyWithImpl<$Res>
    implements _$PitruRitualCopyWith<$Res> {
  __$PitruRitualCopyWithImpl(this._self, this._then);

  final _PitruRitual _self;
  final $Res Function(_PitruRitual) _then;

/// Create a copy of PitruRitual
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_PitruRitual(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PitruAarti {

 String get slug; String get title; String get titleEn; String get titleHi;
/// Create a copy of PitruAarti
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruAartiCopyWith<PitruAarti> get copyWith => _$PitruAartiCopyWithImpl<PitruAarti>(this as PitruAarti, _$identity);

  /// Serializes this PitruAarti to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruAarti&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,titleEn,titleHi);

@override
String toString() {
  return 'PitruAarti(slug: $slug, title: $title, titleEn: $titleEn, titleHi: $titleHi)';
}


}

/// @nodoc
abstract mixin class $PitruAartiCopyWith<$Res>  {
  factory $PitruAartiCopyWith(PitruAarti value, $Res Function(PitruAarti) _then) = _$PitruAartiCopyWithImpl;
@useResult
$Res call({
 String slug, String title, String titleEn, String titleHi
});




}
/// @nodoc
class _$PitruAartiCopyWithImpl<$Res>
    implements $PitruAartiCopyWith<$Res> {
  _$PitruAartiCopyWithImpl(this._self, this._then);

  final PitruAarti _self;
  final $Res Function(PitruAarti) _then;

/// Create a copy of PitruAarti
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? title = null,Object? titleEn = null,Object? titleHi = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruAarti].
extension PitruAartiPatterns on PitruAarti {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruAarti value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruAarti() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruAarti value)  $default,){
final _that = this;
switch (_that) {
case _PitruAarti():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruAarti value)?  $default,){
final _that = this;
switch (_that) {
case _PitruAarti() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String title,  String titleEn,  String titleHi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruAarti() when $default != null:
return $default(_that.slug,_that.title,_that.titleEn,_that.titleHi);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String title,  String titleEn,  String titleHi)  $default,) {final _that = this;
switch (_that) {
case _PitruAarti():
return $default(_that.slug,_that.title,_that.titleEn,_that.titleHi);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String title,  String titleEn,  String titleHi)?  $default,) {final _that = this;
switch (_that) {
case _PitruAarti() when $default != null:
return $default(_that.slug,_that.title,_that.titleEn,_that.titleHi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruAarti implements PitruAarti {
  const _PitruAarti({this.slug = '', this.title = '', this.titleEn = '', this.titleHi = ''});
  factory _PitruAarti.fromJson(Map<String, dynamic> json) => _$PitruAartiFromJson(json);

@override@JsonKey() final  String slug;
@override@JsonKey() final  String title;
@override@JsonKey() final  String titleEn;
@override@JsonKey() final  String titleHi;

/// Create a copy of PitruAarti
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruAartiCopyWith<_PitruAarti> get copyWith => __$PitruAartiCopyWithImpl<_PitruAarti>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruAartiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruAarti&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleHi, titleHi) || other.titleHi == titleHi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,titleEn,titleHi);

@override
String toString() {
  return 'PitruAarti(slug: $slug, title: $title, titleEn: $titleEn, titleHi: $titleHi)';
}


}

/// @nodoc
abstract mixin class _$PitruAartiCopyWith<$Res> implements $PitruAartiCopyWith<$Res> {
  factory _$PitruAartiCopyWith(_PitruAarti value, $Res Function(_PitruAarti) _then) = __$PitruAartiCopyWithImpl;
@override @useResult
$Res call({
 String slug, String title, String titleEn, String titleHi
});




}
/// @nodoc
class __$PitruAartiCopyWithImpl<$Res>
    implements _$PitruAartiCopyWith<$Res> {
  __$PitruAartiCopyWithImpl(this._self, this._then);

  final _PitruAarti _self;
  final $Res Function(_PitruAarti) _then;

/// Create a copy of PitruAarti
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? title = null,Object? titleEn = null,Object? titleHi = null,}) {
  return _then(_PitruAarti(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleHi: null == titleHi ? _self.titleHi : titleHi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
