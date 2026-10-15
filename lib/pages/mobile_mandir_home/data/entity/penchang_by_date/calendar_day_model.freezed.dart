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
mixin _$CalendarDayModell {

@JsonKey(name: "_id") String get id;@JsonKey(name: "date") String get date;@JsonKey(name: "isPurnima") bool get isPurnima;@JsonKey(name: "isAmavasya") bool get isAmavasya;@JsonKey(name: "isGrahan") bool get isGrahan;@JsonKey(name: "tithi") String get tithi;@JsonKey(name: "tithi_hi") String get tithiHi;@JsonKey(name: "tithi_en") String get tithiEn;@JsonKey(name: "paksha") String get paksha;@JsonKey(name: "nakshatra") String get nakshatra;@JsonKey(name: "yog") String get yog;@JsonKey(name: "karan") String get karan;@JsonKey(name: "sunrise") String get sunrise;@JsonKey(name: "sunset") String get sunset;@JsonKey(name: "moonrise") String get moonrise;@JsonKey(name: "related_god_hi") String get relatedGodHi;@JsonKey(name: "related_god_en") String get relatedGodEn;@JsonKey(name: "grahan") GrahanModel get grahan;@JsonKey(name: "festivals") List<FestivalModel> get festivals;@JsonKey(name: "createdAt") String get createdAt;@JsonKey(name: "updatedAt") String get updatedAt;
/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarDayModellCopyWith<CalendarDayModell> get copyWith => _$CalendarDayModellCopyWithImpl<CalendarDayModell>(this as CalendarDayModell, _$identity);

  /// Serializes this CalendarDayModell to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarDayModell&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.isPurnima, isPurnima) || other.isPurnima == isPurnima)&&(identical(other.isAmavasya, isAmavasya) || other.isAmavasya == isAmavasya)&&(identical(other.isGrahan, isGrahan) || other.isGrahan == isGrahan)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.tithiHi, tithiHi) || other.tithiHi == tithiHi)&&(identical(other.tithiEn, tithiEn) || other.tithiEn == tithiEn)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yog, yog) || other.yog == yog)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.moonrise, moonrise) || other.moonrise == moonrise)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.grahan, grahan) || other.grahan == grahan)&&const DeepCollectionEquality().equals(other.festivals, festivals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,isPurnima,isAmavasya,isGrahan,tithi,tithiHi,tithiEn,paksha,nakshatra,yog,karan,sunrise,sunset,moonrise,relatedGodHi,relatedGodEn,grahan,const DeepCollectionEquality().hash(festivals),createdAt,updatedAt]);

@override
String toString() {
  return 'CalendarDayModell(id: $id, date: $date, isPurnima: $isPurnima, isAmavasya: $isAmavasya, isGrahan: $isGrahan, tithi: $tithi, tithiHi: $tithiHi, tithiEn: $tithiEn, paksha: $paksha, nakshatra: $nakshatra, yog: $yog, karan: $karan, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, grahan: $grahan, festivals: $festivals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CalendarDayModellCopyWith<$Res>  {
  factory $CalendarDayModellCopyWith(CalendarDayModell value, $Res Function(CalendarDayModell) _then) = _$CalendarDayModellCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "date") String date,@JsonKey(name: "isPurnima") bool isPurnima,@JsonKey(name: "isAmavasya") bool isAmavasya,@JsonKey(name: "isGrahan") bool isGrahan,@JsonKey(name: "tithi") String tithi,@JsonKey(name: "tithi_hi") String tithiHi,@JsonKey(name: "tithi_en") String tithiEn,@JsonKey(name: "paksha") String paksha,@JsonKey(name: "nakshatra") String nakshatra,@JsonKey(name: "yog") String yog,@JsonKey(name: "karan") String karan,@JsonKey(name: "sunrise") String sunrise,@JsonKey(name: "sunset") String sunset,@JsonKey(name: "moonrise") String moonrise,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "grahan") GrahanModel grahan,@JsonKey(name: "festivals") List<FestivalModel> festivals,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});


$GrahanModelCopyWith<$Res> get grahan;

}
/// @nodoc
class _$CalendarDayModellCopyWithImpl<$Res>
    implements $CalendarDayModellCopyWith<$Res> {
  _$CalendarDayModellCopyWithImpl(this._self, this._then);

  final CalendarDayModell _self;
  final $Res Function(CalendarDayModell) _then;

/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? isPurnima = null,Object? isAmavasya = null,Object? isGrahan = null,Object? tithi = null,Object? tithiHi = null,Object? tithiEn = null,Object? paksha = null,Object? nakshatra = null,Object? yog = null,Object? karan = null,Object? sunrise = null,Object? sunset = null,Object? moonrise = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? grahan = null,Object? festivals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,isPurnima: null == isPurnima ? _self.isPurnima : isPurnima // ignore: cast_nullable_to_non_nullable
as bool,isAmavasya: null == isAmavasya ? _self.isAmavasya : isAmavasya // ignore: cast_nullable_to_non_nullable
as bool,isGrahan: null == isGrahan ? _self.isGrahan : isGrahan // ignore: cast_nullable_to_non_nullable
as bool,tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,tithiHi: null == tithiHi ? _self.tithiHi : tithiHi // ignore: cast_nullable_to_non_nullable
as String,tithiEn: null == tithiEn ? _self.tithiEn : tithiEn // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yog: null == yog ? _self.yog : yog // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,moonrise: null == moonrise ? _self.moonrise : moonrise // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,grahan: null == grahan ? _self.grahan : grahan // ignore: cast_nullable_to_non_nullable
as GrahanModel,festivals: null == festivals ? _self.festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrahanModelCopyWith<$Res> get grahan {
  
  return $GrahanModelCopyWith<$Res>(_self.grahan, (value) {
    return _then(_self.copyWith(grahan: value));
  });
}
}


/// Adds pattern-matching-related methods to [CalendarDayModell].
extension CalendarDayModellPatterns on CalendarDayModell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarDayModell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarDayModell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarDayModell value)  $default,){
final _that = this;
switch (_that) {
case _CalendarDayModell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarDayModell value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarDayModell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "tithi_hi")  String tithiHi, @JsonKey(name: "tithi_en")  String tithiEn, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "grahan")  GrahanModel grahan, @JsonKey(name: "festivals")  List<FestivalModel> festivals, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarDayModell() when $default != null:
return $default(_that.id,_that.date,_that.isPurnima,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.tithiHi,_that.tithiEn,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.sunrise,_that.sunset,_that.moonrise,_that.relatedGodHi,_that.relatedGodEn,_that.grahan,_that.festivals,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "tithi_hi")  String tithiHi, @JsonKey(name: "tithi_en")  String tithiEn, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "grahan")  GrahanModel grahan, @JsonKey(name: "festivals")  List<FestivalModel> festivals, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CalendarDayModell():
return $default(_that.id,_that.date,_that.isPurnima,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.tithiHi,_that.tithiEn,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.sunrise,_that.sunset,_that.moonrise,_that.relatedGodHi,_that.relatedGodEn,_that.grahan,_that.festivals,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "date")  String date, @JsonKey(name: "isPurnima")  bool isPurnima, @JsonKey(name: "isAmavasya")  bool isAmavasya, @JsonKey(name: "isGrahan")  bool isGrahan, @JsonKey(name: "tithi")  String tithi, @JsonKey(name: "tithi_hi")  String tithiHi, @JsonKey(name: "tithi_en")  String tithiEn, @JsonKey(name: "paksha")  String paksha, @JsonKey(name: "nakshatra")  String nakshatra, @JsonKey(name: "yog")  String yog, @JsonKey(name: "karan")  String karan, @JsonKey(name: "sunrise")  String sunrise, @JsonKey(name: "sunset")  String sunset, @JsonKey(name: "moonrise")  String moonrise, @JsonKey(name: "related_god_hi")  String relatedGodHi, @JsonKey(name: "related_god_en")  String relatedGodEn, @JsonKey(name: "grahan")  GrahanModel grahan, @JsonKey(name: "festivals")  List<FestivalModel> festivals, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CalendarDayModell() when $default != null:
return $default(_that.id,_that.date,_that.isPurnima,_that.isAmavasya,_that.isGrahan,_that.tithi,_that.tithiHi,_that.tithiEn,_that.paksha,_that.nakshatra,_that.yog,_that.karan,_that.sunrise,_that.sunset,_that.moonrise,_that.relatedGodHi,_that.relatedGodEn,_that.grahan,_that.festivals,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarDayModell implements CalendarDayModell {
  const _CalendarDayModell({@JsonKey(name: "_id") this.id = "", @JsonKey(name: "date") this.date = "", @JsonKey(name: "isPurnima") this.isPurnima = false, @JsonKey(name: "isAmavasya") this.isAmavasya = false, @JsonKey(name: "isGrahan") this.isGrahan = false, @JsonKey(name: "tithi") this.tithi = "", @JsonKey(name: "tithi_hi") this.tithiHi = "", @JsonKey(name: "tithi_en") this.tithiEn = "", @JsonKey(name: "paksha") this.paksha = "", @JsonKey(name: "nakshatra") this.nakshatra = "", @JsonKey(name: "yog") this.yog = "", @JsonKey(name: "karan") this.karan = "", @JsonKey(name: "sunrise") this.sunrise = "", @JsonKey(name: "sunset") this.sunset = "", @JsonKey(name: "moonrise") this.moonrise = "", @JsonKey(name: "related_god_hi") this.relatedGodHi = "", @JsonKey(name: "related_god_en") this.relatedGodEn = "", @JsonKey(name: "grahan") this.grahan = const GrahanModel(), @JsonKey(name: "festivals") final  List<FestivalModel> festivals = const [], @JsonKey(name: "createdAt") this.createdAt = "", @JsonKey(name: "updatedAt") this.updatedAt = ""}): _festivals = festivals;
  factory _CalendarDayModell.fromJson(Map<String, dynamic> json) => _$CalendarDayModellFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "date") final  String date;
@override@JsonKey(name: "isPurnima") final  bool isPurnima;
@override@JsonKey(name: "isAmavasya") final  bool isAmavasya;
@override@JsonKey(name: "isGrahan") final  bool isGrahan;
@override@JsonKey(name: "tithi") final  String tithi;
@override@JsonKey(name: "tithi_hi") final  String tithiHi;
@override@JsonKey(name: "tithi_en") final  String tithiEn;
@override@JsonKey(name: "paksha") final  String paksha;
@override@JsonKey(name: "nakshatra") final  String nakshatra;
@override@JsonKey(name: "yog") final  String yog;
@override@JsonKey(name: "karan") final  String karan;
@override@JsonKey(name: "sunrise") final  String sunrise;
@override@JsonKey(name: "sunset") final  String sunset;
@override@JsonKey(name: "moonrise") final  String moonrise;
@override@JsonKey(name: "related_god_hi") final  String relatedGodHi;
@override@JsonKey(name: "related_god_en") final  String relatedGodEn;
@override@JsonKey(name: "grahan") final  GrahanModel grahan;
 final  List<FestivalModel> _festivals;
@override@JsonKey(name: "festivals") List<FestivalModel> get festivals {
  if (_festivals is EqualUnmodifiableListView) return _festivals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_festivals);
}

@override@JsonKey(name: "createdAt") final  String createdAt;
@override@JsonKey(name: "updatedAt") final  String updatedAt;

/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarDayModellCopyWith<_CalendarDayModell> get copyWith => __$CalendarDayModellCopyWithImpl<_CalendarDayModell>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarDayModellToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarDayModell&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.isPurnima, isPurnima) || other.isPurnima == isPurnima)&&(identical(other.isAmavasya, isAmavasya) || other.isAmavasya == isAmavasya)&&(identical(other.isGrahan, isGrahan) || other.isGrahan == isGrahan)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.tithiHi, tithiHi) || other.tithiHi == tithiHi)&&(identical(other.tithiEn, tithiEn) || other.tithiEn == tithiEn)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.nakshatra, nakshatra) || other.nakshatra == nakshatra)&&(identical(other.yog, yog) || other.yog == yog)&&(identical(other.karan, karan) || other.karan == karan)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.moonrise, moonrise) || other.moonrise == moonrise)&&(identical(other.relatedGodHi, relatedGodHi) || other.relatedGodHi == relatedGodHi)&&(identical(other.relatedGodEn, relatedGodEn) || other.relatedGodEn == relatedGodEn)&&(identical(other.grahan, grahan) || other.grahan == grahan)&&const DeepCollectionEquality().equals(other._festivals, _festivals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,isPurnima,isAmavasya,isGrahan,tithi,tithiHi,tithiEn,paksha,nakshatra,yog,karan,sunrise,sunset,moonrise,relatedGodHi,relatedGodEn,grahan,const DeepCollectionEquality().hash(_festivals),createdAt,updatedAt]);

@override
String toString() {
  return 'CalendarDayModell(id: $id, date: $date, isPurnima: $isPurnima, isAmavasya: $isAmavasya, isGrahan: $isGrahan, tithi: $tithi, tithiHi: $tithiHi, tithiEn: $tithiEn, paksha: $paksha, nakshatra: $nakshatra, yog: $yog, karan: $karan, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, relatedGodHi: $relatedGodHi, relatedGodEn: $relatedGodEn, grahan: $grahan, festivals: $festivals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CalendarDayModellCopyWith<$Res> implements $CalendarDayModellCopyWith<$Res> {
  factory _$CalendarDayModellCopyWith(_CalendarDayModell value, $Res Function(_CalendarDayModell) _then) = __$CalendarDayModellCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "date") String date,@JsonKey(name: "isPurnima") bool isPurnima,@JsonKey(name: "isAmavasya") bool isAmavasya,@JsonKey(name: "isGrahan") bool isGrahan,@JsonKey(name: "tithi") String tithi,@JsonKey(name: "tithi_hi") String tithiHi,@JsonKey(name: "tithi_en") String tithiEn,@JsonKey(name: "paksha") String paksha,@JsonKey(name: "nakshatra") String nakshatra,@JsonKey(name: "yog") String yog,@JsonKey(name: "karan") String karan,@JsonKey(name: "sunrise") String sunrise,@JsonKey(name: "sunset") String sunset,@JsonKey(name: "moonrise") String moonrise,@JsonKey(name: "related_god_hi") String relatedGodHi,@JsonKey(name: "related_god_en") String relatedGodEn,@JsonKey(name: "grahan") GrahanModel grahan,@JsonKey(name: "festivals") List<FestivalModel> festivals,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});


@override $GrahanModelCopyWith<$Res> get grahan;

}
/// @nodoc
class __$CalendarDayModellCopyWithImpl<$Res>
    implements _$CalendarDayModellCopyWith<$Res> {
  __$CalendarDayModellCopyWithImpl(this._self, this._then);

  final _CalendarDayModell _self;
  final $Res Function(_CalendarDayModell) _then;

/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? isPurnima = null,Object? isAmavasya = null,Object? isGrahan = null,Object? tithi = null,Object? tithiHi = null,Object? tithiEn = null,Object? paksha = null,Object? nakshatra = null,Object? yog = null,Object? karan = null,Object? sunrise = null,Object? sunset = null,Object? moonrise = null,Object? relatedGodHi = null,Object? relatedGodEn = null,Object? grahan = null,Object? festivals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CalendarDayModell(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,isPurnima: null == isPurnima ? _self.isPurnima : isPurnima // ignore: cast_nullable_to_non_nullable
as bool,isAmavasya: null == isAmavasya ? _self.isAmavasya : isAmavasya // ignore: cast_nullable_to_non_nullable
as bool,isGrahan: null == isGrahan ? _self.isGrahan : isGrahan // ignore: cast_nullable_to_non_nullable
as bool,tithi: null == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as String,tithiHi: null == tithiHi ? _self.tithiHi : tithiHi // ignore: cast_nullable_to_non_nullable
as String,tithiEn: null == tithiEn ? _self.tithiEn : tithiEn // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,nakshatra: null == nakshatra ? _self.nakshatra : nakshatra // ignore: cast_nullable_to_non_nullable
as String,yog: null == yog ? _self.yog : yog // ignore: cast_nullable_to_non_nullable
as String,karan: null == karan ? _self.karan : karan // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,moonrise: null == moonrise ? _self.moonrise : moonrise // ignore: cast_nullable_to_non_nullable
as String,relatedGodHi: null == relatedGodHi ? _self.relatedGodHi : relatedGodHi // ignore: cast_nullable_to_non_nullable
as String,relatedGodEn: null == relatedGodEn ? _self.relatedGodEn : relatedGodEn // ignore: cast_nullable_to_non_nullable
as String,grahan: null == grahan ? _self.grahan : grahan // ignore: cast_nullable_to_non_nullable
as GrahanModel,festivals: null == festivals ? _self._festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CalendarDayModell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrahanModelCopyWith<$Res> get grahan {
  
  return $GrahanModelCopyWith<$Res>(_self.grahan, (value) {
    return _then(_self.copyWith(grahan: value));
  });
}
}

// dart format on
