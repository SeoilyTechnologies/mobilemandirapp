// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'festival_event_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FestivalEventEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalEventEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FestivalEventEvent()';
}


}

/// @nodoc
class $FestivalEventEventCopyWith<$Res>  {
$FestivalEventEventCopyWith(FestivalEventEvent _, $Res Function(FestivalEventEvent) __);
}


/// Adds pattern-matching-related methods to [FestivalEventEvent].
extension FestivalEventEventPatterns on FestivalEventEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadFestivalEvents value)?  load,TResult Function( SelectFestivalTag value)?  selectTag,TResult Function( SearchFestivalEvents value)?  search,TResult Function( ShowFestivalMonth value)?  showMonth,TResult Function( ShiftFestivalMonth value)?  shiftMonth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadFestivalEvents() when load != null:
return load(_that);case SelectFestivalTag() when selectTag != null:
return selectTag(_that);case SearchFestivalEvents() when search != null:
return search(_that);case ShowFestivalMonth() when showMonth != null:
return showMonth(_that);case ShiftFestivalMonth() when shiftMonth != null:
return shiftMonth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadFestivalEvents value)  load,required TResult Function( SelectFestivalTag value)  selectTag,required TResult Function( SearchFestivalEvents value)  search,required TResult Function( ShowFestivalMonth value)  showMonth,required TResult Function( ShiftFestivalMonth value)  shiftMonth,}){
final _that = this;
switch (_that) {
case LoadFestivalEvents():
return load(_that);case SelectFestivalTag():
return selectTag(_that);case SearchFestivalEvents():
return search(_that);case ShowFestivalMonth():
return showMonth(_that);case ShiftFestivalMonth():
return shiftMonth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadFestivalEvents value)?  load,TResult? Function( SelectFestivalTag value)?  selectTag,TResult? Function( SearchFestivalEvents value)?  search,TResult? Function( ShowFestivalMonth value)?  showMonth,TResult? Function( ShiftFestivalMonth value)?  shiftMonth,}){
final _that = this;
switch (_that) {
case LoadFestivalEvents() when load != null:
return load(_that);case SelectFestivalTag() when selectTag != null:
return selectTag(_that);case SearchFestivalEvents() when search != null:
return search(_that);case ShowFestivalMonth() when showMonth != null:
return showMonth(_that);case ShiftFestivalMonth() when shiftMonth != null:
return shiftMonth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( String tag)?  selectTag,TResult Function( String query)?  search,TResult Function( int year,  int month)?  showMonth,TResult Function( int delta)?  shiftMonth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadFestivalEvents() when load != null:
return load();case SelectFestivalTag() when selectTag != null:
return selectTag(_that.tag);case SearchFestivalEvents() when search != null:
return search(_that.query);case ShowFestivalMonth() when showMonth != null:
return showMonth(_that.year,_that.month);case ShiftFestivalMonth() when shiftMonth != null:
return shiftMonth(_that.delta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( String tag)  selectTag,required TResult Function( String query)  search,required TResult Function( int year,  int month)  showMonth,required TResult Function( int delta)  shiftMonth,}) {final _that = this;
switch (_that) {
case LoadFestivalEvents():
return load();case SelectFestivalTag():
return selectTag(_that.tag);case SearchFestivalEvents():
return search(_that.query);case ShowFestivalMonth():
return showMonth(_that.year,_that.month);case ShiftFestivalMonth():
return shiftMonth(_that.delta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( String tag)?  selectTag,TResult? Function( String query)?  search,TResult? Function( int year,  int month)?  showMonth,TResult? Function( int delta)?  shiftMonth,}) {final _that = this;
switch (_that) {
case LoadFestivalEvents() when load != null:
return load();case SelectFestivalTag() when selectTag != null:
return selectTag(_that.tag);case SearchFestivalEvents() when search != null:
return search(_that.query);case ShowFestivalMonth() when showMonth != null:
return showMonth(_that.year,_that.month);case ShiftFestivalMonth() when shiftMonth != null:
return shiftMonth(_that.delta);case _:
  return null;

}
}

}

/// @nodoc


class LoadFestivalEvents implements FestivalEventEvent {
  const LoadFestivalEvents();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFestivalEvents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FestivalEventEvent.load()';
}


}




/// @nodoc


class SelectFestivalTag implements FestivalEventEvent {
  const SelectFestivalTag(this.tag);
  

 final  String tag;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectFestivalTagCopyWith<SelectFestivalTag> get copyWith => _$SelectFestivalTagCopyWithImpl<SelectFestivalTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectFestivalTag&&(identical(other.tag, tag) || other.tag == tag));
}


@override
int get hashCode => Object.hash(runtimeType,tag);

@override
String toString() {
  return 'FestivalEventEvent.selectTag(tag: $tag)';
}


}

/// @nodoc
abstract mixin class $SelectFestivalTagCopyWith<$Res> implements $FestivalEventEventCopyWith<$Res> {
  factory $SelectFestivalTagCopyWith(SelectFestivalTag value, $Res Function(SelectFestivalTag) _then) = _$SelectFestivalTagCopyWithImpl;
@useResult
$Res call({
 String tag
});




}
/// @nodoc
class _$SelectFestivalTagCopyWithImpl<$Res>
    implements $SelectFestivalTagCopyWith<$Res> {
  _$SelectFestivalTagCopyWithImpl(this._self, this._then);

  final SelectFestivalTag _self;
  final $Res Function(SelectFestivalTag) _then;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tag = null,}) {
  return _then(SelectFestivalTag(
null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchFestivalEvents implements FestivalEventEvent {
  const SearchFestivalEvents(this.query);
  

 final  String query;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFestivalEventsCopyWith<SearchFestivalEvents> get copyWith => _$SearchFestivalEventsCopyWithImpl<SearchFestivalEvents>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFestivalEvents&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'FestivalEventEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchFestivalEventsCopyWith<$Res> implements $FestivalEventEventCopyWith<$Res> {
  factory $SearchFestivalEventsCopyWith(SearchFestivalEvents value, $Res Function(SearchFestivalEvents) _then) = _$SearchFestivalEventsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchFestivalEventsCopyWithImpl<$Res>
    implements $SearchFestivalEventsCopyWith<$Res> {
  _$SearchFestivalEventsCopyWithImpl(this._self, this._then);

  final SearchFestivalEvents _self;
  final $Res Function(SearchFestivalEvents) _then;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchFestivalEvents(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShowFestivalMonth implements FestivalEventEvent {
  const ShowFestivalMonth(this.year, this.month);
  

 final  int year;
 final  int month;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowFestivalMonthCopyWith<ShowFestivalMonth> get copyWith => _$ShowFestivalMonthCopyWithImpl<ShowFestivalMonth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowFestivalMonth&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'FestivalEventEvent.showMonth(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $ShowFestivalMonthCopyWith<$Res> implements $FestivalEventEventCopyWith<$Res> {
  factory $ShowFestivalMonthCopyWith(ShowFestivalMonth value, $Res Function(ShowFestivalMonth) _then) = _$ShowFestivalMonthCopyWithImpl;
@useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class _$ShowFestivalMonthCopyWithImpl<$Res>
    implements $ShowFestivalMonthCopyWith<$Res> {
  _$ShowFestivalMonthCopyWithImpl(this._self, this._then);

  final ShowFestivalMonth _self;
  final $Res Function(ShowFestivalMonth) _then;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,}) {
  return _then(ShowFestivalMonth(
null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ShiftFestivalMonth implements FestivalEventEvent {
  const ShiftFestivalMonth(this.delta);
  

 final  int delta;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftFestivalMonthCopyWith<ShiftFestivalMonth> get copyWith => _$ShiftFestivalMonthCopyWithImpl<ShiftFestivalMonth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftFestivalMonth&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode => Object.hash(runtimeType,delta);

@override
String toString() {
  return 'FestivalEventEvent.shiftMonth(delta: $delta)';
}


}

/// @nodoc
abstract mixin class $ShiftFestivalMonthCopyWith<$Res> implements $FestivalEventEventCopyWith<$Res> {
  factory $ShiftFestivalMonthCopyWith(ShiftFestivalMonth value, $Res Function(ShiftFestivalMonth) _then) = _$ShiftFestivalMonthCopyWithImpl;
@useResult
$Res call({
 int delta
});




}
/// @nodoc
class _$ShiftFestivalMonthCopyWithImpl<$Res>
    implements $ShiftFestivalMonthCopyWith<$Res> {
  _$ShiftFestivalMonthCopyWithImpl(this._self, this._then);

  final ShiftFestivalMonth _self;
  final $Res Function(ShiftFestivalMonth) _then;

/// Create a copy of FestivalEventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? delta = null,}) {
  return _then(ShiftFestivalMonth(
null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
