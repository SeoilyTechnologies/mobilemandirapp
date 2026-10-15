// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pitru_paksha_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PitruPakshaDetailEvent {

 String get slug; String get date; int get year; String? get lang; double? get lat; double? get lon;
/// Create a copy of PitruPakshaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaDetailEventCopyWith<PitruPakshaDetailEvent> get copyWith => _$PitruPakshaDetailEventCopyWithImpl<PitruPakshaDetailEvent>(this as PitruPakshaDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaDetailEvent&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.date, date) || other.date == date)&&(identical(other.year, year) || other.year == year)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}


@override
int get hashCode => Object.hash(runtimeType,slug,date,year,lang,lat,lon);

@override
String toString() {
  return 'PitruPakshaDetailEvent(slug: $slug, date: $date, year: $year, lang: $lang, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaDetailEventCopyWith<$Res>  {
  factory $PitruPakshaDetailEventCopyWith(PitruPakshaDetailEvent value, $Res Function(PitruPakshaDetailEvent) _then) = _$PitruPakshaDetailEventCopyWithImpl;
@useResult
$Res call({
 String slug, String date, int year, String? lang, double? lat, double? lon
});




}
/// @nodoc
class _$PitruPakshaDetailEventCopyWithImpl<$Res>
    implements $PitruPakshaDetailEventCopyWith<$Res> {
  _$PitruPakshaDetailEventCopyWithImpl(this._self, this._then);

  final PitruPakshaDetailEvent _self;
  final $Res Function(PitruPakshaDetailEvent) _then;

/// Create a copy of PitruPakshaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? date = null,Object? year = null,Object? lang = freezed,Object? lat = freezed,Object? lon = freezed,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruPakshaDetailEvent].
extension PitruPakshaDetailEventPatterns on PitruPakshaDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadPitruPakshaDetail value)?  loadDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadPitruPakshaDetail() when loadDetail != null:
return loadDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadPitruPakshaDetail value)  loadDetail,}){
final _that = this;
switch (_that) {
case LoadPitruPakshaDetail():
return loadDetail(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadPitruPakshaDetail value)?  loadDetail,}){
final _that = this;
switch (_that) {
case LoadPitruPakshaDetail() when loadDetail != null:
return loadDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String slug,  String date,  int year,  String? lang,  double? lat,  double? lon)?  loadDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadPitruPakshaDetail() when loadDetail != null:
return loadDetail(_that.slug,_that.date,_that.year,_that.lang,_that.lat,_that.lon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String slug,  String date,  int year,  String? lang,  double? lat,  double? lon)  loadDetail,}) {final _that = this;
switch (_that) {
case LoadPitruPakshaDetail():
return loadDetail(_that.slug,_that.date,_that.year,_that.lang,_that.lat,_that.lon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String slug,  String date,  int year,  String? lang,  double? lat,  double? lon)?  loadDetail,}) {final _that = this;
switch (_that) {
case LoadPitruPakshaDetail() when loadDetail != null:
return loadDetail(_that.slug,_that.date,_that.year,_that.lang,_that.lat,_that.lon);case _:
  return null;

}
}

}

/// @nodoc


class LoadPitruPakshaDetail implements PitruPakshaDetailEvent {
  const LoadPitruPakshaDetail({required this.slug, required this.date, required this.year, this.lang, this.lat, this.lon});
  

@override final  String slug;
@override final  String date;
@override final  int year;
@override final  String? lang;
@override final  double? lat;
@override final  double? lon;

/// Create a copy of PitruPakshaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadPitruPakshaDetailCopyWith<LoadPitruPakshaDetail> get copyWith => _$LoadPitruPakshaDetailCopyWithImpl<LoadPitruPakshaDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPitruPakshaDetail&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.date, date) || other.date == date)&&(identical(other.year, year) || other.year == year)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}


@override
int get hashCode => Object.hash(runtimeType,slug,date,year,lang,lat,lon);

@override
String toString() {
  return 'PitruPakshaDetailEvent.loadDetail(slug: $slug, date: $date, year: $year, lang: $lang, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $LoadPitruPakshaDetailCopyWith<$Res> implements $PitruPakshaDetailEventCopyWith<$Res> {
  factory $LoadPitruPakshaDetailCopyWith(LoadPitruPakshaDetail value, $Res Function(LoadPitruPakshaDetail) _then) = _$LoadPitruPakshaDetailCopyWithImpl;
@override @useResult
$Res call({
 String slug, String date, int year, String? lang, double? lat, double? lon
});




}
/// @nodoc
class _$LoadPitruPakshaDetailCopyWithImpl<$Res>
    implements $LoadPitruPakshaDetailCopyWith<$Res> {
  _$LoadPitruPakshaDetailCopyWithImpl(this._self, this._then);

  final LoadPitruPakshaDetail _self;
  final $Res Function(LoadPitruPakshaDetail) _then;

/// Create a copy of PitruPakshaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? date = null,Object? year = null,Object? lang = freezed,Object? lat = freezed,Object? lon = freezed,}) {
  return _then(LoadPitruPakshaDetail(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
