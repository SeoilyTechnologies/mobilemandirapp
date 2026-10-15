// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gloable_search_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GloableSearchApiResponse {

 bool get success; String get q; GlobalSearchCounts get counts; GlobalSearchData get data;
/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GloableSearchApiResponseCopyWith<GloableSearchApiResponse> get copyWith => _$GloableSearchApiResponseCopyWithImpl<GloableSearchApiResponse>(this as GloableSearchApiResponse, _$identity);

  /// Serializes this GloableSearchApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GloableSearchApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.q, q) || other.q == q)&&(identical(other.counts, counts) || other.counts == counts)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,q,counts,data);

@override
String toString() {
  return 'GloableSearchApiResponse(success: $success, q: $q, counts: $counts, data: $data)';
}


}

/// @nodoc
abstract mixin class $GloableSearchApiResponseCopyWith<$Res>  {
  factory $GloableSearchApiResponseCopyWith(GloableSearchApiResponse value, $Res Function(GloableSearchApiResponse) _then) = _$GloableSearchApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String q, GlobalSearchCounts counts, GlobalSearchData data
});


$GlobalSearchCountsCopyWith<$Res> get counts;$GlobalSearchDataCopyWith<$Res> get data;

}
/// @nodoc
class _$GloableSearchApiResponseCopyWithImpl<$Res>
    implements $GloableSearchApiResponseCopyWith<$Res> {
  _$GloableSearchApiResponseCopyWithImpl(this._self, this._then);

  final GloableSearchApiResponse _self;
  final $Res Function(GloableSearchApiResponse) _then;

/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? q = null,Object? counts = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as GlobalSearchCounts,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GlobalSearchData,
  ));
}
/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlobalSearchCountsCopyWith<$Res> get counts {
  
  return $GlobalSearchCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlobalSearchDataCopyWith<$Res> get data {
  
  return $GlobalSearchDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GloableSearchApiResponse].
extension GloableSearchApiResponsePatterns on GloableSearchApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GloableSearchApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GloableSearchApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GloableSearchApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _GloableSearchApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GloableSearchApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GloableSearchApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String q,  GlobalSearchCounts counts,  GlobalSearchData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GloableSearchApiResponse() when $default != null:
return $default(_that.success,_that.q,_that.counts,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String q,  GlobalSearchCounts counts,  GlobalSearchData data)  $default,) {final _that = this;
switch (_that) {
case _GloableSearchApiResponse():
return $default(_that.success,_that.q,_that.counts,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String q,  GlobalSearchCounts counts,  GlobalSearchData data)?  $default,) {final _that = this;
switch (_that) {
case _GloableSearchApiResponse() when $default != null:
return $default(_that.success,_that.q,_that.counts,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GloableSearchApiResponse implements GloableSearchApiResponse {
  const _GloableSearchApiResponse({this.success = false, this.q = '', this.counts = const GlobalSearchCounts(), this.data = const GlobalSearchData()});
  factory _GloableSearchApiResponse.fromJson(Map<String, dynamic> json) => _$GloableSearchApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String q;
@override@JsonKey() final  GlobalSearchCounts counts;
@override@JsonKey() final  GlobalSearchData data;

/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GloableSearchApiResponseCopyWith<_GloableSearchApiResponse> get copyWith => __$GloableSearchApiResponseCopyWithImpl<_GloableSearchApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GloableSearchApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GloableSearchApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.q, q) || other.q == q)&&(identical(other.counts, counts) || other.counts == counts)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,q,counts,data);

@override
String toString() {
  return 'GloableSearchApiResponse(success: $success, q: $q, counts: $counts, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GloableSearchApiResponseCopyWith<$Res> implements $GloableSearchApiResponseCopyWith<$Res> {
  factory _$GloableSearchApiResponseCopyWith(_GloableSearchApiResponse value, $Res Function(_GloableSearchApiResponse) _then) = __$GloableSearchApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String q, GlobalSearchCounts counts, GlobalSearchData data
});


@override $GlobalSearchCountsCopyWith<$Res> get counts;@override $GlobalSearchDataCopyWith<$Res> get data;

}
/// @nodoc
class __$GloableSearchApiResponseCopyWithImpl<$Res>
    implements _$GloableSearchApiResponseCopyWith<$Res> {
  __$GloableSearchApiResponseCopyWithImpl(this._self, this._then);

  final _GloableSearchApiResponse _self;
  final $Res Function(_GloableSearchApiResponse) _then;

/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? q = null,Object? counts = null,Object? data = null,}) {
  return _then(_GloableSearchApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as GlobalSearchCounts,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GlobalSearchData,
  ));
}

/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlobalSearchCountsCopyWith<$Res> get counts {
  
  return $GlobalSearchCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}/// Create a copy of GloableSearchApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlobalSearchDataCopyWith<$Res> get data {
  
  return $GlobalSearchDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GlobalSearchCounts {

 int get god; int get aartichalisa; int get temple; int get sant; int get total;
/// Create a copy of GlobalSearchCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchCountsCopyWith<GlobalSearchCounts> get copyWith => _$GlobalSearchCountsCopyWithImpl<GlobalSearchCounts>(this as GlobalSearchCounts, _$identity);

  /// Serializes this GlobalSearchCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchCounts&&(identical(other.god, god) || other.god == god)&&(identical(other.aartichalisa, aartichalisa) || other.aartichalisa == aartichalisa)&&(identical(other.temple, temple) || other.temple == temple)&&(identical(other.sant, sant) || other.sant == sant)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,god,aartichalisa,temple,sant,total);

@override
String toString() {
  return 'GlobalSearchCounts(god: $god, aartichalisa: $aartichalisa, temple: $temple, sant: $sant, total: $total)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchCountsCopyWith<$Res>  {
  factory $GlobalSearchCountsCopyWith(GlobalSearchCounts value, $Res Function(GlobalSearchCounts) _then) = _$GlobalSearchCountsCopyWithImpl;
@useResult
$Res call({
 int god, int aartichalisa, int temple, int sant, int total
});




}
/// @nodoc
class _$GlobalSearchCountsCopyWithImpl<$Res>
    implements $GlobalSearchCountsCopyWith<$Res> {
  _$GlobalSearchCountsCopyWithImpl(this._self, this._then);

  final GlobalSearchCounts _self;
  final $Res Function(GlobalSearchCounts) _then;

/// Create a copy of GlobalSearchCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? god = null,Object? aartichalisa = null,Object? temple = null,Object? sant = null,Object? total = null,}) {
  return _then(_self.copyWith(
god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as int,aartichalisa: null == aartichalisa ? _self.aartichalisa : aartichalisa // ignore: cast_nullable_to_non_nullable
as int,temple: null == temple ? _self.temple : temple // ignore: cast_nullable_to_non_nullable
as int,sant: null == sant ? _self.sant : sant // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalSearchCounts].
extension GlobalSearchCountsPatterns on GlobalSearchCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalSearchCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalSearchCounts value)  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalSearchCounts value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int god,  int aartichalisa,  int temple,  int sant,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchCounts() when $default != null:
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int god,  int aartichalisa,  int temple,  int sant,  int total)  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchCounts():
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int god,  int aartichalisa,  int temple,  int sant,  int total)?  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchCounts() when $default != null:
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GlobalSearchCounts implements GlobalSearchCounts {
  const _GlobalSearchCounts({this.god = 0, this.aartichalisa = 0, this.temple = 0, this.sant = 0, this.total = 0});
  factory _GlobalSearchCounts.fromJson(Map<String, dynamic> json) => _$GlobalSearchCountsFromJson(json);

@override@JsonKey() final  int god;
@override@JsonKey() final  int aartichalisa;
@override@JsonKey() final  int temple;
@override@JsonKey() final  int sant;
@override@JsonKey() final  int total;

/// Create a copy of GlobalSearchCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchCountsCopyWith<_GlobalSearchCounts> get copyWith => __$GlobalSearchCountsCopyWithImpl<_GlobalSearchCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GlobalSearchCountsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchCounts&&(identical(other.god, god) || other.god == god)&&(identical(other.aartichalisa, aartichalisa) || other.aartichalisa == aartichalisa)&&(identical(other.temple, temple) || other.temple == temple)&&(identical(other.sant, sant) || other.sant == sant)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,god,aartichalisa,temple,sant,total);

@override
String toString() {
  return 'GlobalSearchCounts(god: $god, aartichalisa: $aartichalisa, temple: $temple, sant: $sant, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchCountsCopyWith<$Res> implements $GlobalSearchCountsCopyWith<$Res> {
  factory _$GlobalSearchCountsCopyWith(_GlobalSearchCounts value, $Res Function(_GlobalSearchCounts) _then) = __$GlobalSearchCountsCopyWithImpl;
@override @useResult
$Res call({
 int god, int aartichalisa, int temple, int sant, int total
});




}
/// @nodoc
class __$GlobalSearchCountsCopyWithImpl<$Res>
    implements _$GlobalSearchCountsCopyWith<$Res> {
  __$GlobalSearchCountsCopyWithImpl(this._self, this._then);

  final _GlobalSearchCounts _self;
  final $Res Function(_GlobalSearchCounts) _then;

/// Create a copy of GlobalSearchCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? god = null,Object? aartichalisa = null,Object? temple = null,Object? sant = null,Object? total = null,}) {
  return _then(_GlobalSearchCounts(
god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as int,aartichalisa: null == aartichalisa ? _self.aartichalisa : aartichalisa // ignore: cast_nullable_to_non_nullable
as int,temple: null == temple ? _self.temple : temple // ignore: cast_nullable_to_non_nullable
as int,sant: null == sant ? _self.sant : sant // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$GlobalSearchData {

 List<GlobalSearchItem> get god; List<GlobalSearchItem> get aartichalisa; List<GlobalSearchItem> get temple; List<GlobalSearchItem> get sant;
/// Create a copy of GlobalSearchData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchDataCopyWith<GlobalSearchData> get copyWith => _$GlobalSearchDataCopyWithImpl<GlobalSearchData>(this as GlobalSearchData, _$identity);

  /// Serializes this GlobalSearchData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchData&&const DeepCollectionEquality().equals(other.god, god)&&const DeepCollectionEquality().equals(other.aartichalisa, aartichalisa)&&const DeepCollectionEquality().equals(other.temple, temple)&&const DeepCollectionEquality().equals(other.sant, sant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(god),const DeepCollectionEquality().hash(aartichalisa),const DeepCollectionEquality().hash(temple),const DeepCollectionEquality().hash(sant));

@override
String toString() {
  return 'GlobalSearchData(god: $god, aartichalisa: $aartichalisa, temple: $temple, sant: $sant)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchDataCopyWith<$Res>  {
  factory $GlobalSearchDataCopyWith(GlobalSearchData value, $Res Function(GlobalSearchData) _then) = _$GlobalSearchDataCopyWithImpl;
@useResult
$Res call({
 List<GlobalSearchItem> god, List<GlobalSearchItem> aartichalisa, List<GlobalSearchItem> temple, List<GlobalSearchItem> sant
});




}
/// @nodoc
class _$GlobalSearchDataCopyWithImpl<$Res>
    implements $GlobalSearchDataCopyWith<$Res> {
  _$GlobalSearchDataCopyWithImpl(this._self, this._then);

  final GlobalSearchData _self;
  final $Res Function(GlobalSearchData) _then;

/// Create a copy of GlobalSearchData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? god = null,Object? aartichalisa = null,Object? temple = null,Object? sant = null,}) {
  return _then(_self.copyWith(
god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,aartichalisa: null == aartichalisa ? _self.aartichalisa : aartichalisa // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,temple: null == temple ? _self.temple : temple // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,sant: null == sant ? _self.sant : sant // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalSearchData].
extension GlobalSearchDataPatterns on GlobalSearchData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalSearchData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalSearchData value)  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalSearchData value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GlobalSearchItem> god,  List<GlobalSearchItem> aartichalisa,  List<GlobalSearchItem> temple,  List<GlobalSearchItem> sant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchData() when $default != null:
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GlobalSearchItem> god,  List<GlobalSearchItem> aartichalisa,  List<GlobalSearchItem> temple,  List<GlobalSearchItem> sant)  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchData():
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GlobalSearchItem> god,  List<GlobalSearchItem> aartichalisa,  List<GlobalSearchItem> temple,  List<GlobalSearchItem> sant)?  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchData() when $default != null:
return $default(_that.god,_that.aartichalisa,_that.temple,_that.sant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GlobalSearchData implements GlobalSearchData {
  const _GlobalSearchData({final  List<GlobalSearchItem> god = const [], final  List<GlobalSearchItem> aartichalisa = const [], final  List<GlobalSearchItem> temple = const [], final  List<GlobalSearchItem> sant = const []}): _god = god,_aartichalisa = aartichalisa,_temple = temple,_sant = sant;
  factory _GlobalSearchData.fromJson(Map<String, dynamic> json) => _$GlobalSearchDataFromJson(json);

 final  List<GlobalSearchItem> _god;
@override@JsonKey() List<GlobalSearchItem> get god {
  if (_god is EqualUnmodifiableListView) return _god;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_god);
}

 final  List<GlobalSearchItem> _aartichalisa;
@override@JsonKey() List<GlobalSearchItem> get aartichalisa {
  if (_aartichalisa is EqualUnmodifiableListView) return _aartichalisa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_aartichalisa);
}

 final  List<GlobalSearchItem> _temple;
@override@JsonKey() List<GlobalSearchItem> get temple {
  if (_temple is EqualUnmodifiableListView) return _temple;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temple);
}

 final  List<GlobalSearchItem> _sant;
@override@JsonKey() List<GlobalSearchItem> get sant {
  if (_sant is EqualUnmodifiableListView) return _sant;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sant);
}


/// Create a copy of GlobalSearchData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchDataCopyWith<_GlobalSearchData> get copyWith => __$GlobalSearchDataCopyWithImpl<_GlobalSearchData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GlobalSearchDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchData&&const DeepCollectionEquality().equals(other._god, _god)&&const DeepCollectionEquality().equals(other._aartichalisa, _aartichalisa)&&const DeepCollectionEquality().equals(other._temple, _temple)&&const DeepCollectionEquality().equals(other._sant, _sant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_god),const DeepCollectionEquality().hash(_aartichalisa),const DeepCollectionEquality().hash(_temple),const DeepCollectionEquality().hash(_sant));

@override
String toString() {
  return 'GlobalSearchData(god: $god, aartichalisa: $aartichalisa, temple: $temple, sant: $sant)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchDataCopyWith<$Res> implements $GlobalSearchDataCopyWith<$Res> {
  factory _$GlobalSearchDataCopyWith(_GlobalSearchData value, $Res Function(_GlobalSearchData) _then) = __$GlobalSearchDataCopyWithImpl;
@override @useResult
$Res call({
 List<GlobalSearchItem> god, List<GlobalSearchItem> aartichalisa, List<GlobalSearchItem> temple, List<GlobalSearchItem> sant
});




}
/// @nodoc
class __$GlobalSearchDataCopyWithImpl<$Res>
    implements _$GlobalSearchDataCopyWith<$Res> {
  __$GlobalSearchDataCopyWithImpl(this._self, this._then);

  final _GlobalSearchData _self;
  final $Res Function(_GlobalSearchData) _then;

/// Create a copy of GlobalSearchData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? god = null,Object? aartichalisa = null,Object? temple = null,Object? sant = null,}) {
  return _then(_GlobalSearchData(
god: null == god ? _self._god : god // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,aartichalisa: null == aartichalisa ? _self._aartichalisa : aartichalisa // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,temple: null == temple ? _self._temple : temple // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,sant: null == sant ? _self._sant : sant // ignore: cast_nullable_to_non_nullable
as List<GlobalSearchItem>,
  ));
}


}

/// @nodoc
mixin _$GlobalSearchItem {

 String get contentType; String get contentId; GodData? get godData; TempleData? get templeData; SantData? get santData; AartiModel? get aartiData;
/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchItemCopyWith<GlobalSearchItem> get copyWith => _$GlobalSearchItemCopyWithImpl<GlobalSearchItem>(this as GlobalSearchItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchItem&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.godData, godData) || other.godData == godData)&&(identical(other.templeData, templeData) || other.templeData == templeData)&&(identical(other.santData, santData) || other.santData == santData)&&(identical(other.aartiData, aartiData) || other.aartiData == aartiData));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,contentId,godData,templeData,santData,aartiData);

@override
String toString() {
  return 'GlobalSearchItem(contentType: $contentType, contentId: $contentId, godData: $godData, templeData: $templeData, santData: $santData, aartiData: $aartiData)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchItemCopyWith<$Res>  {
  factory $GlobalSearchItemCopyWith(GlobalSearchItem value, $Res Function(GlobalSearchItem) _then) = _$GlobalSearchItemCopyWithImpl;
@useResult
$Res call({
 String contentType, String contentId, GodData? godData, TempleData? templeData, SantData? santData, AartiModel? aartiData
});


$GodDataCopyWith<$Res>? get godData;$TempleDataCopyWith<$Res>? get templeData;$SantDataCopyWith<$Res>? get santData;$AartiModelCopyWith<$Res>? get aartiData;

}
/// @nodoc
class _$GlobalSearchItemCopyWithImpl<$Res>
    implements $GlobalSearchItemCopyWith<$Res> {
  _$GlobalSearchItemCopyWithImpl(this._self, this._then);

  final GlobalSearchItem _self;
  final $Res Function(GlobalSearchItem) _then;

/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = null,Object? contentId = null,Object? godData = freezed,Object? templeData = freezed,Object? santData = freezed,Object? aartiData = freezed,}) {
  return _then(_self.copyWith(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,godData: freezed == godData ? _self.godData : godData // ignore: cast_nullable_to_non_nullable
as GodData?,templeData: freezed == templeData ? _self.templeData : templeData // ignore: cast_nullable_to_non_nullable
as TempleData?,santData: freezed == santData ? _self.santData : santData // ignore: cast_nullable_to_non_nullable
as SantData?,aartiData: freezed == aartiData ? _self.aartiData : aartiData // ignore: cast_nullable_to_non_nullable
as AartiModel?,
  ));
}
/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDataCopyWith<$Res>? get godData {
    if (_self.godData == null) {
    return null;
  }

  return $GodDataCopyWith<$Res>(_self.godData!, (value) {
    return _then(_self.copyWith(godData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TempleDataCopyWith<$Res>? get templeData {
    if (_self.templeData == null) {
    return null;
  }

  return $TempleDataCopyWith<$Res>(_self.templeData!, (value) {
    return _then(_self.copyWith(templeData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDataCopyWith<$Res>? get santData {
    if (_self.santData == null) {
    return null;
  }

  return $SantDataCopyWith<$Res>(_self.santData!, (value) {
    return _then(_self.copyWith(santData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiModelCopyWith<$Res>? get aartiData {
    if (_self.aartiData == null) {
    return null;
  }

  return $AartiModelCopyWith<$Res>(_self.aartiData!, (value) {
    return _then(_self.copyWith(aartiData: value));
  });
}
}


/// Adds pattern-matching-related methods to [GlobalSearchItem].
extension GlobalSearchItemPatterns on GlobalSearchItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalSearchItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalSearchItem value)  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalSearchItem value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String contentType,  String contentId,  GodData? godData,  TempleData? templeData,  SantData? santData,  AartiModel? aartiData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchItem() when $default != null:
return $default(_that.contentType,_that.contentId,_that.godData,_that.templeData,_that.santData,_that.aartiData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String contentType,  String contentId,  GodData? godData,  TempleData? templeData,  SantData? santData,  AartiModel? aartiData)  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchItem():
return $default(_that.contentType,_that.contentId,_that.godData,_that.templeData,_that.santData,_that.aartiData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String contentType,  String contentId,  GodData? godData,  TempleData? templeData,  SantData? santData,  AartiModel? aartiData)?  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchItem() when $default != null:
return $default(_that.contentType,_that.contentId,_that.godData,_that.templeData,_that.santData,_that.aartiData);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalSearchItem extends GlobalSearchItem {
  const _GlobalSearchItem({this.contentType = '', this.contentId = '', this.godData, this.templeData, this.santData, this.aartiData}): super._();
  

@override@JsonKey() final  String contentType;
@override@JsonKey() final  String contentId;
@override final  GodData? godData;
@override final  TempleData? templeData;
@override final  SantData? santData;
@override final  AartiModel? aartiData;

/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchItemCopyWith<_GlobalSearchItem> get copyWith => __$GlobalSearchItemCopyWithImpl<_GlobalSearchItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchItem&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.godData, godData) || other.godData == godData)&&(identical(other.templeData, templeData) || other.templeData == templeData)&&(identical(other.santData, santData) || other.santData == santData)&&(identical(other.aartiData, aartiData) || other.aartiData == aartiData));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,contentId,godData,templeData,santData,aartiData);

@override
String toString() {
  return 'GlobalSearchItem(contentType: $contentType, contentId: $contentId, godData: $godData, templeData: $templeData, santData: $santData, aartiData: $aartiData)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchItemCopyWith<$Res> implements $GlobalSearchItemCopyWith<$Res> {
  factory _$GlobalSearchItemCopyWith(_GlobalSearchItem value, $Res Function(_GlobalSearchItem) _then) = __$GlobalSearchItemCopyWithImpl;
@override @useResult
$Res call({
 String contentType, String contentId, GodData? godData, TempleData? templeData, SantData? santData, AartiModel? aartiData
});


@override $GodDataCopyWith<$Res>? get godData;@override $TempleDataCopyWith<$Res>? get templeData;@override $SantDataCopyWith<$Res>? get santData;@override $AartiModelCopyWith<$Res>? get aartiData;

}
/// @nodoc
class __$GlobalSearchItemCopyWithImpl<$Res>
    implements _$GlobalSearchItemCopyWith<$Res> {
  __$GlobalSearchItemCopyWithImpl(this._self, this._then);

  final _GlobalSearchItem _self;
  final $Res Function(_GlobalSearchItem) _then;

/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = null,Object? contentId = null,Object? godData = freezed,Object? templeData = freezed,Object? santData = freezed,Object? aartiData = freezed,}) {
  return _then(_GlobalSearchItem(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,godData: freezed == godData ? _self.godData : godData // ignore: cast_nullable_to_non_nullable
as GodData?,templeData: freezed == templeData ? _self.templeData : templeData // ignore: cast_nullable_to_non_nullable
as TempleData?,santData: freezed == santData ? _self.santData : santData // ignore: cast_nullable_to_non_nullable
as SantData?,aartiData: freezed == aartiData ? _self.aartiData : aartiData // ignore: cast_nullable_to_non_nullable
as AartiModel?,
  ));
}

/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodDataCopyWith<$Res>? get godData {
    if (_self.godData == null) {
    return null;
  }

  return $GodDataCopyWith<$Res>(_self.godData!, (value) {
    return _then(_self.copyWith(godData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TempleDataCopyWith<$Res>? get templeData {
    if (_self.templeData == null) {
    return null;
  }

  return $TempleDataCopyWith<$Res>(_self.templeData!, (value) {
    return _then(_self.copyWith(templeData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDataCopyWith<$Res>? get santData {
    if (_self.santData == null) {
    return null;
  }

  return $SantDataCopyWith<$Res>(_self.santData!, (value) {
    return _then(_self.copyWith(santData: value));
  });
}/// Create a copy of GlobalSearchItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiModelCopyWith<$Res>? get aartiData {
    if (_self.aartiData == null) {
    return null;
  }

  return $AartiModelCopyWith<$Res>(_self.aartiData!, (value) {
    return _then(_self.copyWith(aartiData: value));
  });
}
}

// dart format on
