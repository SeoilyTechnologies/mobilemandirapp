// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pitru_paksha_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PitruPakshaState {

 bool get isLoading; bool get isSuccess; String get errorMessage; PitruPakshaResponse? get response; String get searchQuery; DateTime? get selectedDateFilter; int get selectedYear; double get latitude; double get longitude; String get language;
/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaStateCopyWith<PitruPakshaState> get copyWith => _$PitruPakshaStateCopyWithImpl<PitruPakshaState>(this as PitruPakshaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.response, response) || other.response == response)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedDateFilter, selectedDateFilter) || other.selectedDateFilter == selectedDateFilter)&&(identical(other.selectedYear, selectedYear) || other.selectedYear == selectedYear)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,errorMessage,response,searchQuery,selectedDateFilter,selectedYear,latitude,longitude,language);

@override
String toString() {
  return 'PitruPakshaState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, response: $response, searchQuery: $searchQuery, selectedDateFilter: $selectedDateFilter, selectedYear: $selectedYear, latitude: $latitude, longitude: $longitude, language: $language)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaStateCopyWith<$Res>  {
  factory $PitruPakshaStateCopyWith(PitruPakshaState value, $Res Function(PitruPakshaState) _then) = _$PitruPakshaStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, String errorMessage, PitruPakshaResponse? response, String searchQuery, DateTime? selectedDateFilter, int selectedYear, double latitude, double longitude, String language
});


$PitruPakshaResponseCopyWith<$Res>? get response;

}
/// @nodoc
class _$PitruPakshaStateCopyWithImpl<$Res>
    implements $PitruPakshaStateCopyWith<$Res> {
  _$PitruPakshaStateCopyWithImpl(this._self, this._then);

  final PitruPakshaState _self;
  final $Res Function(PitruPakshaState) _then;

/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? errorMessage = null,Object? response = freezed,Object? searchQuery = null,Object? selectedDateFilter = freezed,Object? selectedYear = null,Object? latitude = null,Object? longitude = null,Object? language = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as PitruPakshaResponse?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedDateFilter: freezed == selectedDateFilter ? _self.selectedDateFilter : selectedDateFilter // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedYear: null == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $PitruPakshaResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [PitruPakshaState].
extension PitruPakshaStatePatterns on PitruPakshaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPakshaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPakshaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPakshaState value)  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPakshaState value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String errorMessage,  PitruPakshaResponse? response,  String searchQuery,  DateTime? selectedDateFilter,  int selectedYear,  double latitude,  double longitude,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPakshaState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.errorMessage,_that.response,_that.searchQuery,_that.selectedDateFilter,_that.selectedYear,_that.latitude,_that.longitude,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSuccess,  String errorMessage,  PitruPakshaResponse? response,  String searchQuery,  DateTime? selectedDateFilter,  int selectedYear,  double latitude,  double longitude,  String language)  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaState():
return $default(_that.isLoading,_that.isSuccess,_that.errorMessage,_that.response,_that.searchQuery,_that.selectedDateFilter,_that.selectedYear,_that.latitude,_that.longitude,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSuccess,  String errorMessage,  PitruPakshaResponse? response,  String searchQuery,  DateTime? selectedDateFilter,  int selectedYear,  double latitude,  double longitude,  String language)?  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaState() when $default != null:
return $default(_that.isLoading,_that.isSuccess,_that.errorMessage,_that.response,_that.searchQuery,_that.selectedDateFilter,_that.selectedYear,_that.latitude,_that.longitude,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _PitruPakshaState implements PitruPakshaState {
  const _PitruPakshaState({this.isLoading = false, this.isSuccess = false, this.errorMessage = '', this.response, this.searchQuery = '', this.selectedDateFilter, this.selectedYear = 2026, this.latitude = 28.6139, this.longitude = 77.209, this.language = 'en'});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  String errorMessage;
@override final  PitruPakshaResponse? response;
@override@JsonKey() final  String searchQuery;
@override final  DateTime? selectedDateFilter;
@override@JsonKey() final  int selectedYear;
@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@JsonKey() final  String language;

/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPakshaStateCopyWith<_PitruPakshaState> get copyWith => __$PitruPakshaStateCopyWithImpl<_PitruPakshaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPakshaState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.response, response) || other.response == response)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedDateFilter, selectedDateFilter) || other.selectedDateFilter == selectedDateFilter)&&(identical(other.selectedYear, selectedYear) || other.selectedYear == selectedYear)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,errorMessage,response,searchQuery,selectedDateFilter,selectedYear,latitude,longitude,language);

@override
String toString() {
  return 'PitruPakshaState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, response: $response, searchQuery: $searchQuery, selectedDateFilter: $selectedDateFilter, selectedYear: $selectedYear, latitude: $latitude, longitude: $longitude, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PitruPakshaStateCopyWith<$Res> implements $PitruPakshaStateCopyWith<$Res> {
  factory _$PitruPakshaStateCopyWith(_PitruPakshaState value, $Res Function(_PitruPakshaState) _then) = __$PitruPakshaStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, String errorMessage, PitruPakshaResponse? response, String searchQuery, DateTime? selectedDateFilter, int selectedYear, double latitude, double longitude, String language
});


@override $PitruPakshaResponseCopyWith<$Res>? get response;

}
/// @nodoc
class __$PitruPakshaStateCopyWithImpl<$Res>
    implements _$PitruPakshaStateCopyWith<$Res> {
  __$PitruPakshaStateCopyWithImpl(this._self, this._then);

  final _PitruPakshaState _self;
  final $Res Function(_PitruPakshaState) _then;

/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? errorMessage = null,Object? response = freezed,Object? searchQuery = null,Object? selectedDateFilter = freezed,Object? selectedYear = null,Object? latitude = null,Object? longitude = null,Object? language = null,}) {
  return _then(_PitruPakshaState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as PitruPakshaResponse?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedDateFilter: freezed == selectedDateFilter ? _self.selectedDateFilter : selectedDateFilter // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedYear: null == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PitruPakshaState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $PitruPakshaResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

// dart format on
