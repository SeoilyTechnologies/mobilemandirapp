// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarDayModel {

@JsonKey(name: "date") String get date;@JsonKey(name: "isPurnima") bool get isPurnima;@JsonKey(name: "isEkadashi") bool get isEkadashi;@JsonKey(name: "isAmavasya") bool get isAmavasya;@JsonKey(name: "isGrahan") bool get isGrahan;@JsonKey(name: "tithi") String get tithi;@JsonKey(name: "paksha") String get paksha;@JsonKey(name: "nakshatra") String get nakshatra;@JsonKey(name: "yog") String get yog;@JsonKey(name: "karan") String get karan;@JsonKey(name: "moonPhasePercent") int get moonPhasePercent;@JsonKey(name: "moonPhase") double get moonPhase;@JsonKey(name: "sunrise") String get sunrise;@JsonKey(name: "sunset") String get sunset;@JsonKey(name: "moonrise") String get moonrise;@JsonKey(name: "festivals") List<String> get festivals;@JsonKey(name: "relatedGods") List<CalendarRelatedGod> get relatedGods;
/// Create a copy of CalendarDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarDayModelCopyWith<CalendarDayModel> get copyWith => _$CalendarDayModelCopyWithImpl<CalendarDayModel>(this as CalendarDayModel, _$identity);

  /// Serializes this CalendarDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarDayModel&&(identical(other.date, date) || other.date == date)&&(identical(other.isPurnima, isPurnima) || other.isPurnima == isPurnima)&&(identical(other.isEkadashi, isEkadashi) || other.isEkadashi == isEkadashi)&&(identical(other.isAmavasya, isAmavasya) || other.isAmavasya == isAmavasya)&&(identical(other.isGrahan, isGrahan) || other.isGrahan == isGrahan)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yog, yog) || other.yog == yog)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.moonPhasePercent, moonPhasePercent) || other.moonPhasePercent == moonPhasePercent)&&(identical(other.moonPhase, moonPhase) || other.moonPhase == moonPhase)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.moonrise, moonrise) || other.moonrise == moonrise)&&const DeepCollectionEquality().equals(other.festivals, festivals)&&const DeepCollectionEquality().equals(other.relatedGods, relatedGods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,isPurnima,isEkadashi,isAmavasya,isGrahan,tithi,paksha,nakshatra,yog,karan,moonPhasePercent,moonPhase,sunrise,sunset,moonrise,const DeepCollectionEquality().hash(festivals),const DeepCollectionEquality().hash(relatedGods));

@override
String toString() {
  return 'CalendarDayModel(date: $date, isPurnima: $isPurnima, isEkadashi: $isEkadashi, isAmavasya: $isAmavasya, isGrahan: $isGrahan, tithi: $tithi, paksha: $paksha, nakshatra: $nakshatra, yog: $yog, karan: $karan, moonPhasePercent: $moonPhasePercent, moonPhase: $moonPhase, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, festivals: $festivals, relatedGods: $relatedGods)';
}


}

/// @nodoc
abstract mixin class $CalendarDayModelCopyWith<$Res>  {
  factory $CalendarDayModelCopyWith(CalendarDayModel value, $Res Function(CalendarDayModel) _then) = _$CalendarDayModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "date") String date,@JsonKey(name: "isPurnima") bool isPurnima,@JsonKey(name: "isEkadashi") bool isEkadashi,@JsonKey(name: "isAmavasya") bool isAmavasya,@JsonKey(name: "isGrahan") bool isGrahan,@JsonKey(name: "tithi") String tithi,@JsonKey(name: "paksha") String paksha,@JsonKey(name: "nakshatra") String nakshatra,@JsonKey(name: "yog") String yog,@JsonKey(name: "karan") String karan,@JsonKey(name: "moonPhasePercent") int moonPhasePercent,@JsonKey(name: "moonPhase") double moonPhase,@JsonKey(name: "sunrise") String sunrise,@JsonKey(name: "sunset") String sunset,@JsonKey(name: "moonrise") String moonrise,@JsonKey(name: "festivals") List<String> festivals,@JsonKey(name: "relatedGods") List<CalendarRelatedGod> relatedGods
});




}
/// @nodoc
class _$CalendarDayModelCopyWithImpl<$Res>
    implements $CalendarDayModelCopyWith<$Res> {
  _$CalendarDayModelCopyWithImpl(this._self, this._then);

  final CalendarDayModel _self;
  final $Res Function(CalendarDayModel) _then;

/// Create a copy of CalendarDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? isPurnima = null,Object? isEkadashi = null,Object? isAmavasya = null,Object? isGrahan = null,Object? tithi = null,Object? paksha = null,Object? nakshatra = null,Object? yog = null,Object? karan = null,Object? moonPhasePercent = null,Object? moonPhase = null,Object? sunrise = null,Object? sunset = null,Object? moonrise = null,Object? festivals = null,Object? relatedGods = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,isPurnima: null == isPurnima ? _self.isPurnima : isPurnima // ignore: cast_nullable_to_non_nullable
as bool,isEkadashi: null == isEkadashi ? _self.isEkadashi : isEkadashi // ignore: cast_nullable_to_non_nullable
as bool,isAmavasya: null == isAmavasya ? _self.isAmavasya : isAmavasya // ignore: cast_nullable_to_non_nullable
as bool,isGrahan: null == isGrahan ? _self.isGrahan : isGrahan // ignore: cast_nullable_to_non_nullable
as bool,tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yog: null == yog ? _self.yog : yog // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,moonPhasePercent: null == moonPhasePercent ? _self.moonPhasePercent : moonPhasePercent // ignore: cast_nullable_to_non_nullable
as int,moonPhase: null == moonPhase ? _self.moonPhase : moonPhase // ignore: cast_nullable_to_non_nullable
as double,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,moonrise: null == moonrise ? _self.moonrise : moonrise // ignore: cast_nullable_to_non_nullable
as String,festivals: null == festivals ? _self.festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGods: null == relatedGods ? _self.relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<CalendarRelatedGod>,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarDayModel].
extension CalendarDayModelPatterns on CalendarDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarDayModel value)  $default,){
final _that = this;
switch (_that) {
case _CalendarDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isEkadashi")  bool isEkadashi, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "moonPhasePercent")  int moonPhasePercent, @JsonKey(name: "moonPhase")  double moonPhase, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "festivals")  List<String> festivals, @JsonKey(name: "relatedGods")  List<CalendarRelatedGod> relatedGods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarDayModel() when $default != null:
return $default(_that.date,_that.isPurnima,_that.isEkadashi,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.moonPhasePercent,_that.moonPhase,_that.sunrise,_that.sunset,_that.moonrise,_that.festivals,_that.relatedGods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isEkadashi")  bool isEkadashi, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "moonPhasePercent")  int moonPhasePercent, @JsonKey(name: "moonPhase")  double moonPhase, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "festivals")  List<String> festivals, @JsonKey(name: "relatedGods")  List<CalendarRelatedGod> relatedGods)  $default,) {final _that = this;
switch (_that) {
case _CalendarDayModel():
return $default(_that.date,_that.isPurnima,_that.isEkadashi,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.moonPhasePercent,_that.moonPhase,_that.sunrise,_that.sunset,_that.moonrise,_that.festivals,_that.relatedGods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isEkadashi")  bool isEkadashi, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "moonPhasePercent")  int moonPhasePercent, @JsonKey(name: "moonPhase")  double moonPhase, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "festivals")  List<String> festivals, @JsonKey(name: "relatedGods")  List<CalendarRelatedGod> relatedGods)?  $default,) {final _that = this;
switch (_that) {
case _CalendarDayModel() when $default != null:
return $default(_that.date,_that.isPurnima,_that.isEkadashi,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.moonPhasePercent,_that.moonPhase,_that.sunrise,_that.sunset,_that.moonrise,_that.festivals,_that.relatedGods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarDayModel implements CalendarDayModel {
  const _CalendarDayModel({@JsonKey(name: "date") this.date = "", @JsonKey(name: "isPurnima") this.isPurnima = false, @JsonKey(name: "isEkadashi") this.isEkadashi = false, @JsonKey(name: "isAmavasya") this.isAmavasya = false, @JsonKey(name: "isGrahan") this.isGrahan = false, @JsonKey(name: "tithi") this.tithi = "", @JsonKey(name: "paksha") this.paksha = "", @JsonKey(name: "nakshatra") this.nakshatra = "", @JsonKey(name: "yog") this.yog = "", @JsonKey(name: "karan") this.karan = "", @JsonKey(name: "moonPhasePercent") this.moonPhasePercent = 0, @JsonKey(name: "moonPhase") this.moonPhase = 0.0, @JsonKey(name: "sunrise") this.sunrise = "", @JsonKey(name: "sunset") this.sunset = "", @JsonKey(name: "moonrise") this.moonrise = "", @JsonKey(name: "festivals") final  List<String> festivals = const <String>[], @JsonKey(name: "relatedGods") final  List<CalendarRelatedGod> relatedGods = const <CalendarRelatedGod>[]}): _festivals = festivals,_relatedGods = relatedGods;
  factory _CalendarDayModel.fromJson(Map<String, dynamic> json) => _$CalendarDayModelFromJson(json);

@override@JsonKey(name: "date") final  String date;
@override@JsonKey(name: "isPurnima") final  bool isPurnima;
@override@JsonKey(name: "isEkadashi") final  bool isEkadashi;
@override@JsonKey(name: "isAmavasya") final  bool isAmavasya;
@override@JsonKey(name: "isGrahan") final  bool isGrahan;
@override@JsonKey(name: "tithi") final  String tithi;
@override@JsonKey(name: "paksha") final  String paksha;
@override@JsonKey(name: "nakshatra") final  String nakshatra;
@override@JsonKey(name: "yog") final  String yog;
@override@JsonKey(name: "karan") final  String karan;
@override@JsonKey(name: "moonPhasePercent") final  int moonPhasePercent;
@override@JsonKey(name: "moonPhase") final  double moonPhase;
@override@JsonKey(name: "sunrise") final  String sunrise;
@override@JsonKey(name: "sunset") final  String sunset;
@override@JsonKey(name: "moonrise") final  String moonrise;
 final  List<String> _festivals;
@override@JsonKey(name: "festivals") List<String> get festivals {
  if (_festivals is EqualUnmodifiableListView) return _festivals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_festivals);
}

 final  List<CalendarRelatedGod> _relatedGods;
@override@JsonKey(name: "relatedGods") List<CalendarRelatedGod> get relatedGods {
  if (_relatedGods is EqualUnmodifiableListView) return _relatedGods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGods);
}


/// Create a copy of CalendarDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarDayModelCopyWith<_CalendarDayModel> get copyWith => __$CalendarDayModelCopyWithImpl<_CalendarDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarDayModel&&(identical(other.date, date) || other.date == date)&&(identical(other.isPurnima, isPurnima) || other.isPurnima == isPurnima)&&(identical(other.isEkadashi, isEkadashi) || other.isEkadashi == isEkadashi)&&(identical(other.isAmavasya, isAmavasya) || other.isAmavasya == isAmavasya)&&(identical(other.isGrahan, isGrahan) || other.isGrahan == isGrahan)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yog, yog) || other.yog == yog)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.moonPhasePercent, moonPhasePercent) || other.moonPhasePercent == moonPhasePercent)&&(identical(other.moonPhase, moonPhase) || other.moonPhase == moonPhase)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.moonrise, moonrise) || other.moonrise == moonrise)&&const DeepCollectionEquality().equals(other._festivals, _festivals)&&const DeepCollectionEquality().equals(other._relatedGods, _relatedGods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,isPurnima,isEkadashi,isAmavasya,isGrahan,tithi,paksha,nakshatra,yog,karan,moonPhasePercent,moonPhase,sunrise,sunset,moonrise,const DeepCollectionEquality().hash(_festivals),const DeepCollectionEquality().hash(_relatedGods));

@override
String toString() {
  return 'CalendarDayModel(date: $date, isPurnima: $isPurnima, isEkadashi: $isEkadashi, isAmavasya: $isAmavasya, isGrahan: $isGrahan, tithi: $tithi, paksha: $paksha, nakshatra: $nakshatra, yog: $yog, karan: $karan, moonPhasePercent: $moonPhasePercent, moonPhase: $moonPhase, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, festivals: $festivals, relatedGods: $relatedGods)';
}


}

/// @nodoc
abstract mixin class _$CalendarDayModelCopyWith<$Res> implements $CalendarDayModelCopyWith<$Res> {
  factory _$CalendarDayModelCopyWith(_CalendarDayModel value, $Res Function(_CalendarDayModel) _then) = __$CalendarDayModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "date") String date,@JsonKey(name: "isPurnima") bool isPurnima,@JsonKey(name: "isEkadashi") bool isEkadashi,@JsonKey(name: "isAmavasya") bool isAmavasya,@JsonKey(name: "isGrahan") bool isGrahan,@JsonKey(name: "tithi") String tithi,@JsonKey(name: "paksha") String paksha,@JsonKey(name: "nakshatra") String nakshatra,@JsonKey(name: "yog") String yog,@JsonKey(name: "karan") String karan,@JsonKey(name: "moonPhasePercent") int moonPhasePercent,@JsonKey(name: "moonPhase") double moonPhase,@JsonKey(name: "sunrise") String sunrise,@JsonKey(name: "sunset") String sunset,@JsonKey(name: "moonrise") String moonrise,@JsonKey(name: "festivals") List<String> festivals,@JsonKey(name: "relatedGods") List<CalendarRelatedGod> relatedGods
});




}
/// @nodoc
class __$CalendarDayModelCopyWithImpl<$Res>
    implements _$CalendarDayModelCopyWith<$Res> {
  __$CalendarDayModelCopyWithImpl(this._self, this._then);

  final _CalendarDayModel _self;
  final $Res Function(_CalendarDayModel) _then;

/// Create a copy of CalendarDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? isPurnima = null,Object? isEkadashi = null,Object? isAmavasya = null,Object? isGrahan = null,Object? tithi = null,Object? paksha = null,Object? nakshatra = null,Object? yog = null,Object? karan = null,Object? moonPhasePercent = null,Object? moonPhase = null,Object? sunrise = null,Object? sunset = null,Object? moonrise = null,Object? festivals = null,Object? relatedGods = null,}) {
  return _then(_CalendarDayModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,isPurnima: null == isPurnima ? _self.isPurnima : isPurnima // ignore: cast_nullable_to_non_nullable
as bool,isEkadashi: null == isEkadashi ? _self.isEkadashi : isEkadashi // ignore: cast_nullable_to_non_nullable
as bool,isAmavasya: null == isAmavasya ? _self.isAmavasya : isAmavasya // ignore: cast_nullable_to_non_nullable
as bool,isGrahan: null == isGrahan ? _self.isGrahan : isGrahan // ignore: cast_nullable_to_non_nullable
as bool,tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yog: null == yog ? _self.yog : yog // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,moonPhasePercent: null == moonPhasePercent ? _self.moonPhasePercent : moonPhasePercent // ignore: cast_nullable_to_non_nullable
as int,moonPhase: null == moonPhase ? _self.moonPhase : moonPhase // ignore: cast_nullable_to_non_nullable
as double,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,moonrise: null == moonrise ? _self.moonrise : moonrise // ignore: cast_nullable_to_non_nullable
as String,festivals: null == festivals ? _self._festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGods: null == relatedGods ? _self._relatedGods : relatedGods // ignore: cast_nullable_to_non_nullable
as List<CalendarRelatedGod>,
  ));
}


}


/// @nodoc
mixin _$CalendarRelatedGod {

@JsonKey(name: "name") String get name;@JsonKey(name: "image") String get image;@JsonKey(name: "birthPlace") String get birthPlace;@JsonKey(name: "category") String get category;@JsonKey(name: "_id") String get id;
/// Create a copy of CalendarRelatedGod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarRelatedGodCopyWith<CalendarRelatedGod> get copyWith => _$CalendarRelatedGodCopyWithImpl<CalendarRelatedGod>(this as CalendarRelatedGod, _$identity);

  /// Serializes this CalendarRelatedGod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarRelatedGod&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.category, category) || other.category == category)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,birthPlace,category,id);

@override
String toString() {
  return 'CalendarRelatedGod(name: $name, image: $image, birthPlace: $birthPlace, category: $category, id: $id)';
}


}

/// @nodoc
abstract mixin class $CalendarRelatedGodCopyWith<$Res>  {
  factory $CalendarRelatedGodCopyWith(CalendarRelatedGod value, $Res Function(CalendarRelatedGod) _then) = _$CalendarRelatedGodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String name,@JsonKey(name: "image") String image,@JsonKey(name: "birthPlace") String birthPlace,@JsonKey(name: "category") String category,@JsonKey(name: "_id") String id
});




}
/// @nodoc
class _$CalendarRelatedGodCopyWithImpl<$Res>
    implements $CalendarRelatedGodCopyWith<$Res> {
  _$CalendarRelatedGodCopyWithImpl(this._self, this._then);

  final CalendarRelatedGod _self;
  final $Res Function(CalendarRelatedGod) _then;

/// Create a copy of CalendarRelatedGod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? image = null,Object? birthPlace = null,Object? category = null,Object? id = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarRelatedGod].
extension CalendarRelatedGodPatterns on CalendarRelatedGod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarRelatedGod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarRelatedGod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarRelatedGod value)  $default,){
final _that = this;
switch (_that) {
case _CalendarRelatedGod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarRelatedGod value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarRelatedGod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String name, @JsonKey(name: "image")  String image, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "category")  String category, @JsonKey(name: "_id")  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarRelatedGod() when $default != null:
return $default(_that.name,_that.image,_that.birthPlace,_that.category,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String name, @JsonKey(name: "image")  String image, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "category")  String category, @JsonKey(name: "_id")  String id)  $default,) {final _that = this;
switch (_that) {
case _CalendarRelatedGod():
return $default(_that.name,_that.image,_that.birthPlace,_that.category,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String name, @JsonKey(name: "image")  String image, @JsonKey(name: "birthPlace")  String birthPlace, @JsonKey(name: "category")  String category, @JsonKey(name: "_id")  String id)?  $default,) {final _that = this;
switch (_that) {
case _CalendarRelatedGod() when $default != null:
return $default(_that.name,_that.image,_that.birthPlace,_that.category,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarRelatedGod implements CalendarRelatedGod {
  const _CalendarRelatedGod({@JsonKey(name: "name") this.name = "", @JsonKey(name: "image") this.image = "", @JsonKey(name: "birthPlace") this.birthPlace = "", @JsonKey(name: "category") this.category = "", @JsonKey(name: "_id") this.id = ""});
  factory _CalendarRelatedGod.fromJson(Map<String, dynamic> json) => _$CalendarRelatedGodFromJson(json);

@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "birthPlace") final  String birthPlace;
@override@JsonKey(name: "category") final  String category;
@override@JsonKey(name: "_id") final  String id;

/// Create a copy of CalendarRelatedGod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarRelatedGodCopyWith<_CalendarRelatedGod> get copyWith => __$CalendarRelatedGodCopyWithImpl<_CalendarRelatedGod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarRelatedGodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarRelatedGod&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.category, category) || other.category == category)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,birthPlace,category,id);

@override
String toString() {
  return 'CalendarRelatedGod(name: $name, image: $image, birthPlace: $birthPlace, category: $category, id: $id)';
}


}

/// @nodoc
abstract mixin class _$CalendarRelatedGodCopyWith<$Res> implements $CalendarRelatedGodCopyWith<$Res> {
  factory _$CalendarRelatedGodCopyWith(_CalendarRelatedGod value, $Res Function(_CalendarRelatedGod) _then) = __$CalendarRelatedGodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String name,@JsonKey(name: "image") String image,@JsonKey(name: "birthPlace") String birthPlace,@JsonKey(name: "category") String category,@JsonKey(name: "_id") String id
});




}
/// @nodoc
class __$CalendarRelatedGodCopyWithImpl<$Res>
    implements _$CalendarRelatedGodCopyWith<$Res> {
  __$CalendarRelatedGodCopyWithImpl(this._self, this._then);

  final _CalendarRelatedGod _self;
  final $Res Function(_CalendarRelatedGod) _then;

/// Create a copy of CalendarRelatedGod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? image = null,Object? birthPlace = null,Object? category = null,Object? id = null,}) {
  return _then(_CalendarRelatedGod(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CalendarResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "lang") String get lang;@JsonKey(name: "count") int get count;@JsonKey(name: "data") List<CalendarDayModel> get data;
/// Create a copy of CalendarResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarResponseCopyWith<CalendarResponse> get copyWith => _$CalendarResponseCopyWithImpl<CalendarResponse>(this as CalendarResponse, _$identity);

  /// Serializes this CalendarResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CalendarResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $CalendarResponseCopyWith<$Res>  {
  factory $CalendarResponseCopyWith(CalendarResponse value, $Res Function(CalendarResponse) _then) = _$CalendarResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "lang") String lang,@JsonKey(name: "count") int count,@JsonKey(name: "data") List<CalendarDayModel> data
});




}
/// @nodoc
class _$CalendarResponseCopyWithImpl<$Res>
    implements $CalendarResponseCopyWith<$Res> {
  _$CalendarResponseCopyWithImpl(this._self, this._then);

  final CalendarResponse _self;
  final $Res Function(CalendarResponse) _then;

/// Create a copy of CalendarResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CalendarDayModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarResponse].
extension CalendarResponsePatterns on CalendarResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarResponse value)  $default,){
final _that = this;
switch (_that) {
case _CalendarResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "lang")  String lang, @JsonKey(name: "count")  int count, @JsonKey(name: "data")  List<CalendarDayModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "lang")  String lang, @JsonKey(name: "count")  int count, @JsonKey(name: "data")  List<CalendarDayModel> data)  $default,) {final _that = this;
switch (_that) {
case _CalendarResponse():
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "lang")  String lang, @JsonKey(name: "count")  int count, @JsonKey(name: "data")  List<CalendarDayModel> data)?  $default,) {final _that = this;
switch (_that) {
case _CalendarResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarResponse implements CalendarResponse {
  const _CalendarResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "lang") this.lang = "", @JsonKey(name: "count") this.count = 0, @JsonKey(name: "data") final  List<CalendarDayModel> data = const <CalendarDayModel>[]}): _data = data;
  factory _CalendarResponse.fromJson(Map<String, dynamic> json) => _$CalendarResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "lang") final  String lang;
@override@JsonKey(name: "count") final  int count;
 final  List<CalendarDayModel> _data;
@override@JsonKey(name: "data") List<CalendarDayModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CalendarResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarResponseCopyWith<_CalendarResponse> get copyWith => __$CalendarResponseCopyWithImpl<_CalendarResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CalendarResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CalendarResponseCopyWith<$Res> implements $CalendarResponseCopyWith<$Res> {
  factory _$CalendarResponseCopyWith(_CalendarResponse value, $Res Function(_CalendarResponse) _then) = __$CalendarResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "lang") String lang,@JsonKey(name: "count") int count,@JsonKey(name: "data") List<CalendarDayModel> data
});




}
/// @nodoc
class __$CalendarResponseCopyWithImpl<$Res>
    implements _$CalendarResponseCopyWith<$Res> {
  __$CalendarResponseCopyWithImpl(this._self, this._then);

  final _CalendarResponse _self;
  final $Res Function(_CalendarResponse) _then;

/// Create a copy of CalendarResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_CalendarResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CalendarDayModel>,
  ));
}


}

// dart format on
