// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pitru_paksha_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PitruPakshaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PitruPakshaEvent()';
}


}

/// @nodoc
class $PitruPakshaEventCopyWith<$Res>  {
$PitruPakshaEventCopyWith(PitruPakshaEvent _, $Res Function(PitruPakshaEvent) __);
}


/// Adds pattern-matching-related methods to [PitruPakshaEvent].
extension PitruPakshaEventPatterns on PitruPakshaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadPitruPakshaData value)?  loadData,TResult Function( SearchPitruPaksha value)?  search,TResult Function( FilterPitruPakshaByDate value)?  filterByDate,TResult Function( ClearPitruPakshaFilter value)?  clearFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadPitruPakshaData() when loadData != null:
return loadData(_that);case SearchPitruPaksha() when search != null:
return search(_that);case FilterPitruPakshaByDate() when filterByDate != null:
return filterByDate(_that);case ClearPitruPakshaFilter() when clearFilter != null:
return clearFilter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadPitruPakshaData value)  loadData,required TResult Function( SearchPitruPaksha value)  search,required TResult Function( FilterPitruPakshaByDate value)  filterByDate,required TResult Function( ClearPitruPakshaFilter value)  clearFilter,}){
final _that = this;
switch (_that) {
case LoadPitruPakshaData():
return loadData(_that);case SearchPitruPaksha():
return search(_that);case FilterPitruPakshaByDate():
return filterByDate(_that);case ClearPitruPakshaFilter():
return clearFilter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadPitruPakshaData value)?  loadData,TResult? Function( SearchPitruPaksha value)?  search,TResult? Function( FilterPitruPakshaByDate value)?  filterByDate,TResult? Function( ClearPitruPakshaFilter value)?  clearFilter,}){
final _that = this;
switch (_that) {
case LoadPitruPakshaData() when loadData != null:
return loadData(_that);case SearchPitruPaksha() when search != null:
return search(_that);case FilterPitruPakshaByDate() when filterByDate != null:
return filterByDate(_that);case ClearPitruPakshaFilter() when clearFilter != null:
return clearFilter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? year,  String? lang,  double? lat,  double? lon)?  loadData,TResult Function( String query)?  search,TResult Function( DateTime? selectedDate)?  filterByDate,TResult Function()?  clearFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadPitruPakshaData() when loadData != null:
return loadData(_that.year,_that.lang,_that.lat,_that.lon);case SearchPitruPaksha() when search != null:
return search(_that.query);case FilterPitruPakshaByDate() when filterByDate != null:
return filterByDate(_that.selectedDate);case ClearPitruPakshaFilter() when clearFilter != null:
return clearFilter();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? year,  String? lang,  double? lat,  double? lon)  loadData,required TResult Function( String query)  search,required TResult Function( DateTime? selectedDate)  filterByDate,required TResult Function()  clearFilter,}) {final _that = this;
switch (_that) {
case LoadPitruPakshaData():
return loadData(_that.year,_that.lang,_that.lat,_that.lon);case SearchPitruPaksha():
return search(_that.query);case FilterPitruPakshaByDate():
return filterByDate(_that.selectedDate);case ClearPitruPakshaFilter():
return clearFilter();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? year,  String? lang,  double? lat,  double? lon)?  loadData,TResult? Function( String query)?  search,TResult? Function( DateTime? selectedDate)?  filterByDate,TResult? Function()?  clearFilter,}) {final _that = this;
switch (_that) {
case LoadPitruPakshaData() when loadData != null:
return loadData(_that.year,_that.lang,_that.lat,_that.lon);case SearchPitruPaksha() when search != null:
return search(_that.query);case FilterPitruPakshaByDate() when filterByDate != null:
return filterByDate(_that.selectedDate);case ClearPitruPakshaFilter() when clearFilter != null:
return clearFilter();case _:
  return null;

}
}

}

/// @nodoc


class LoadPitruPakshaData implements PitruPakshaEvent {
  const LoadPitruPakshaData({this.year, this.lang, this.lat, this.lon});
  

 final  int? year;
 final  String? lang;
 final  double? lat;
 final  double? lon;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadPitruPakshaDataCopyWith<LoadPitruPakshaData> get copyWith => _$LoadPitruPakshaDataCopyWithImpl<LoadPitruPakshaData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPitruPakshaData&&(identical(other.year, year) || other.year == year)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}


@override
int get hashCode => Object.hash(runtimeType,year,lang,lat,lon);

@override
String toString() {
  return 'PitruPakshaEvent.loadData(year: $year, lang: $lang, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $LoadPitruPakshaDataCopyWith<$Res> implements $PitruPakshaEventCopyWith<$Res> {
  factory $LoadPitruPakshaDataCopyWith(LoadPitruPakshaData value, $Res Function(LoadPitruPakshaData) _then) = _$LoadPitruPakshaDataCopyWithImpl;
@useResult
$Res call({
 int? year, String? lang, double? lat, double? lon
});




}
/// @nodoc
class _$LoadPitruPakshaDataCopyWithImpl<$Res>
    implements $LoadPitruPakshaDataCopyWith<$Res> {
  _$LoadPitruPakshaDataCopyWithImpl(this._self, this._then);

  final LoadPitruPakshaData _self;
  final $Res Function(LoadPitruPakshaData) _then;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? year = freezed,Object? lang = freezed,Object? lat = freezed,Object? lon = freezed,}) {
  return _then(LoadPitruPakshaData(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class SearchPitruPaksha implements PitruPakshaEvent {
  const SearchPitruPaksha(this.query);
  

 final  String query;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPitruPakshaCopyWith<SearchPitruPaksha> get copyWith => _$SearchPitruPakshaCopyWithImpl<SearchPitruPaksha>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPitruPaksha&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PitruPakshaEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchPitruPakshaCopyWith<$Res> implements $PitruPakshaEventCopyWith<$Res> {
  factory $SearchPitruPakshaCopyWith(SearchPitruPaksha value, $Res Function(SearchPitruPaksha) _then) = _$SearchPitruPakshaCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchPitruPakshaCopyWithImpl<$Res>
    implements $SearchPitruPakshaCopyWith<$Res> {
  _$SearchPitruPakshaCopyWithImpl(this._self, this._then);

  final SearchPitruPaksha _self;
  final $Res Function(SearchPitruPaksha) _then;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchPitruPaksha(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FilterPitruPakshaByDate implements PitruPakshaEvent {
  const FilterPitruPakshaByDate(this.selectedDate);
  

 final  DateTime? selectedDate;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterPitruPakshaByDateCopyWith<FilterPitruPakshaByDate> get copyWith => _$FilterPitruPakshaByDateCopyWithImpl<FilterPitruPakshaByDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterPitruPakshaByDate&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate);

@override
String toString() {
  return 'PitruPakshaEvent.filterByDate(selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class $FilterPitruPakshaByDateCopyWith<$Res> implements $PitruPakshaEventCopyWith<$Res> {
  factory $FilterPitruPakshaByDateCopyWith(FilterPitruPakshaByDate value, $Res Function(FilterPitruPakshaByDate) _then) = _$FilterPitruPakshaByDateCopyWithImpl;
@useResult
$Res call({
 DateTime? selectedDate
});




}
/// @nodoc
class _$FilterPitruPakshaByDateCopyWithImpl<$Res>
    implements $FilterPitruPakshaByDateCopyWith<$Res> {
  _$FilterPitruPakshaByDateCopyWithImpl(this._self, this._then);

  final FilterPitruPakshaByDate _self;
  final $Res Function(FilterPitruPakshaByDate) _then;

/// Create a copy of PitruPakshaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDate = freezed,}) {
  return _then(FilterPitruPakshaByDate(
freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class ClearPitruPakshaFilter implements PitruPakshaEvent {
  const ClearPitruPakshaFilter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearPitruPakshaFilter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PitruPakshaEvent.clearFilter()';
}


}




// dart format on
