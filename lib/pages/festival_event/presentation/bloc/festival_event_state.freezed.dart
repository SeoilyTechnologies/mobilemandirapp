// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'festival_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FestivalEventState {

 bool get isLoading; String get error; List<PageTagModel> get tags;// Every tagged page with its NEXT date (featured card + search).
 List<PageListItemModel> get pages; String get selectedTag; String get search;// Month on screen; swiping moves it.
 int get viewYear; int get viewMonth;// Pages dated in each month ("2026-10", past months too), loaded on demand.
 Map<String, List<PageListItemModel>> get monthData; Map<String, String> get monthStatus;
/// Create a copy of FestivalEventState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalEventStateCopyWith<FestivalEventState> get copyWith => _$FestivalEventStateCopyWithImpl<FestivalEventState>(this as FestivalEventState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalEventState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.pages, pages)&&(identical(other.selectedTag, selectedTag) || other.selectedTag == selectedTag)&&(identical(other.search, search) || other.search == search)&&(identical(other.viewYear, viewYear) || other.viewYear == viewYear)&&(identical(other.viewMonth, viewMonth) || other.viewMonth == viewMonth)&&const DeepCollectionEquality().equals(other.monthData, monthData)&&const DeepCollectionEquality().equals(other.monthStatus, monthStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(pages),selectedTag,search,viewYear,viewMonth,const DeepCollectionEquality().hash(monthData),const DeepCollectionEquality().hash(monthStatus));

@override
String toString() {
  return 'FestivalEventState(isLoading: $isLoading, error: $error, tags: $tags, pages: $pages, selectedTag: $selectedTag, search: $search, viewYear: $viewYear, viewMonth: $viewMonth, monthData: $monthData, monthStatus: $monthStatus)';
}


}

/// @nodoc
abstract mixin class $FestivalEventStateCopyWith<$Res>  {
  factory $FestivalEventStateCopyWith(FestivalEventState value, $Res Function(FestivalEventState) _then) = _$FestivalEventStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String error, List<PageTagModel> tags, List<PageListItemModel> pages, String selectedTag, String search, int viewYear, int viewMonth, Map<String, List<PageListItemModel>> monthData, Map<String, String> monthStatus
});




}
/// @nodoc
class _$FestivalEventStateCopyWithImpl<$Res>
    implements $FestivalEventStateCopyWith<$Res> {
  _$FestivalEventStateCopyWithImpl(this._self, this._then);

  final FestivalEventState _self;
  final $Res Function(FestivalEventState) _then;

/// Create a copy of FestivalEventState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = null,Object? tags = null,Object? pages = null,Object? selectedTag = null,Object? search = null,Object? viewYear = null,Object? viewMonth = null,Object? monthData = null,Object? monthStatus = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<PageTagModel>,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<PageListItemModel>,selectedTag: null == selectedTag ? _self.selectedTag : selectedTag // ignore: cast_nullable_to_non_nullable
as String,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,viewYear: null == viewYear ? _self.viewYear : viewYear // ignore: cast_nullable_to_non_nullable
as int,viewMonth: null == viewMonth ? _self.viewMonth : viewMonth // ignore: cast_nullable_to_non_nullable
as int,monthData: null == monthData ? _self.monthData : monthData // ignore: cast_nullable_to_non_nullable
as Map<String, List<PageListItemModel>>,monthStatus: null == monthStatus ? _self.monthStatus : monthStatus // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FestivalEventState].
extension FestivalEventStatePatterns on FestivalEventState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FestivalEventState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FestivalEventState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FestivalEventState value)  $default,){
final _that = this;
switch (_that) {
case _FestivalEventState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FestivalEventState value)?  $default,){
final _that = this;
switch (_that) {
case _FestivalEventState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String error,  List<PageTagModel> tags,  List<PageListItemModel> pages,  String selectedTag,  String search,  int viewYear,  int viewMonth,  Map<String, List<PageListItemModel>> monthData,  Map<String, String> monthStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalEventState() when $default != null:
return $default(_that.isLoading,_that.error,_that.tags,_that.pages,_that.selectedTag,_that.search,_that.viewYear,_that.viewMonth,_that.monthData,_that.monthStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String error,  List<PageTagModel> tags,  List<PageListItemModel> pages,  String selectedTag,  String search,  int viewYear,  int viewMonth,  Map<String, List<PageListItemModel>> monthData,  Map<String, String> monthStatus)  $default,) {final _that = this;
switch (_that) {
case _FestivalEventState():
return $default(_that.isLoading,_that.error,_that.tags,_that.pages,_that.selectedTag,_that.search,_that.viewYear,_that.viewMonth,_that.monthData,_that.monthStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String error,  List<PageTagModel> tags,  List<PageListItemModel> pages,  String selectedTag,  String search,  int viewYear,  int viewMonth,  Map<String, List<PageListItemModel>> monthData,  Map<String, String> monthStatus)?  $default,) {final _that = this;
switch (_that) {
case _FestivalEventState() when $default != null:
return $default(_that.isLoading,_that.error,_that.tags,_that.pages,_that.selectedTag,_that.search,_that.viewYear,_that.viewMonth,_that.monthData,_that.monthStatus);case _:
  return null;

}
}

}

/// @nodoc


class _FestivalEventState extends FestivalEventState {
  const _FestivalEventState({this.isLoading = false, this.error = '', final  List<PageTagModel> tags = const [], final  List<PageListItemModel> pages = const [], this.selectedTag = '', this.search = '', required this.viewYear, required this.viewMonth, final  Map<String, List<PageListItemModel>> monthData = const {}, final  Map<String, String> monthStatus = const {}}): _tags = tags,_pages = pages,_monthData = monthData,_monthStatus = monthStatus,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String error;
 final  List<PageTagModel> _tags;
@override@JsonKey() List<PageTagModel> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// Every tagged page with its NEXT date (featured card + search).
 final  List<PageListItemModel> _pages;
// Every tagged page with its NEXT date (featured card + search).
@override@JsonKey() List<PageListItemModel> get pages {
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pages);
}

@override@JsonKey() final  String selectedTag;
@override@JsonKey() final  String search;
// Month on screen; swiping moves it.
@override final  int viewYear;
@override final  int viewMonth;
// Pages dated in each month ("2026-10", past months too), loaded on demand.
 final  Map<String, List<PageListItemModel>> _monthData;
// Pages dated in each month ("2026-10", past months too), loaded on demand.
@override@JsonKey() Map<String, List<PageListItemModel>> get monthData {
  if (_monthData is EqualUnmodifiableMapView) return _monthData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_monthData);
}

 final  Map<String, String> _monthStatus;
@override@JsonKey() Map<String, String> get monthStatus {
  if (_monthStatus is EqualUnmodifiableMapView) return _monthStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_monthStatus);
}


/// Create a copy of FestivalEventState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FestivalEventStateCopyWith<_FestivalEventState> get copyWith => __$FestivalEventStateCopyWithImpl<_FestivalEventState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalEventState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._pages, _pages)&&(identical(other.selectedTag, selectedTag) || other.selectedTag == selectedTag)&&(identical(other.search, search) || other.search == search)&&(identical(other.viewYear, viewYear) || other.viewYear == viewYear)&&(identical(other.viewMonth, viewMonth) || other.viewMonth == viewMonth)&&const DeepCollectionEquality().equals(other._monthData, _monthData)&&const DeepCollectionEquality().equals(other._monthStatus, _monthStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_pages),selectedTag,search,viewYear,viewMonth,const DeepCollectionEquality().hash(_monthData),const DeepCollectionEquality().hash(_monthStatus));

@override
String toString() {
  return 'FestivalEventState(isLoading: $isLoading, error: $error, tags: $tags, pages: $pages, selectedTag: $selectedTag, search: $search, viewYear: $viewYear, viewMonth: $viewMonth, monthData: $monthData, monthStatus: $monthStatus)';
}


}

/// @nodoc
abstract mixin class _$FestivalEventStateCopyWith<$Res> implements $FestivalEventStateCopyWith<$Res> {
  factory _$FestivalEventStateCopyWith(_FestivalEventState value, $Res Function(_FestivalEventState) _then) = __$FestivalEventStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String error, List<PageTagModel> tags, List<PageListItemModel> pages, String selectedTag, String search, int viewYear, int viewMonth, Map<String, List<PageListItemModel>> monthData, Map<String, String> monthStatus
});




}
/// @nodoc
class __$FestivalEventStateCopyWithImpl<$Res>
    implements _$FestivalEventStateCopyWith<$Res> {
  __$FestivalEventStateCopyWithImpl(this._self, this._then);

  final _FestivalEventState _self;
  final $Res Function(_FestivalEventState) _then;

/// Create a copy of FestivalEventState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = null,Object? tags = null,Object? pages = null,Object? selectedTag = null,Object? search = null,Object? viewYear = null,Object? viewMonth = null,Object? monthData = null,Object? monthStatus = null,}) {
  return _then(_FestivalEventState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<PageTagModel>,pages: null == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<PageListItemModel>,selectedTag: null == selectedTag ? _self.selectedTag : selectedTag // ignore: cast_nullable_to_non_nullable
as String,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,viewYear: null == viewYear ? _self.viewYear : viewYear // ignore: cast_nullable_to_non_nullable
as int,viewMonth: null == viewMonth ? _self.viewMonth : viewMonth // ignore: cast_nullable_to_non_nullable
as int,monthData: null == monthData ? _self._monthData : monthData // ignore: cast_nullable_to_non_nullable
as Map<String, List<PageListItemModel>>,monthStatus: null == monthStatus ? _self._monthStatus : monthStatus // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
