// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pitru_paksha_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PitruPakshaResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'lang') String get lang;@JsonKey(name: 'data') PitruPakshaData? get data;
/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaResponseCopyWith<PitruPakshaResponse> get copyWith => _$PitruPakshaResponseCopyWithImpl<PitruPakshaResponse>(this as PitruPakshaResponse, _$identity);

  /// Serializes this PitruPakshaResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,data);

@override
String toString() {
  return 'PitruPakshaResponse(success: $success, lang: $lang, data: $data)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaResponseCopyWith<$Res>  {
  factory $PitruPakshaResponseCopyWith(PitruPakshaResponse value, $Res Function(PitruPakshaResponse) _then) = _$PitruPakshaResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'data') PitruPakshaData? data
});


$PitruPakshaDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PitruPakshaResponseCopyWithImpl<$Res>
    implements $PitruPakshaResponseCopyWith<$Res> {
  _$PitruPakshaResponseCopyWithImpl(this._self, this._then);

  final PitruPakshaResponse _self;
  final $Res Function(PitruPakshaResponse) _then;

/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PitruPakshaData?,
  ));
}
/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PitruPakshaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PitruPakshaResponse].
extension PitruPakshaResponsePatterns on PitruPakshaResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPakshaResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPakshaResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPakshaResponse value)  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPakshaResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'data')  PitruPakshaData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPakshaResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'data')  PitruPakshaData? data)  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'data')  PitruPakshaData? data)?  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaResponse() when $default != null:
return $default(_that.success,_that.lang,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPakshaResponse implements PitruPakshaResponse {
  const _PitruPakshaResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'lang') this.lang = '', @JsonKey(name: 'data') this.data});
  factory _PitruPakshaResponse.fromJson(Map<String, dynamic> json) => _$PitruPakshaResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'lang') final  String lang;
@override@JsonKey(name: 'data') final  PitruPakshaData? data;

/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPakshaResponseCopyWith<_PitruPakshaResponse> get copyWith => __$PitruPakshaResponseCopyWithImpl<_PitruPakshaResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPakshaResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPakshaResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,data);

@override
String toString() {
  return 'PitruPakshaResponse(success: $success, lang: $lang, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PitruPakshaResponseCopyWith<$Res> implements $PitruPakshaResponseCopyWith<$Res> {
  factory _$PitruPakshaResponseCopyWith(_PitruPakshaResponse value, $Res Function(_PitruPakshaResponse) _then) = __$PitruPakshaResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'data') PitruPakshaData? data
});


@override $PitruPakshaDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PitruPakshaResponseCopyWithImpl<$Res>
    implements _$PitruPakshaResponseCopyWith<$Res> {
  __$PitruPakshaResponseCopyWithImpl(this._self, this._then);

  final _PitruPakshaResponse _self;
  final $Res Function(_PitruPakshaResponse) _then;

/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? data = freezed,}) {
  return _then(_PitruPakshaResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PitruPakshaData?,
  ));
}

/// Create a copy of PitruPakshaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPakshaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PitruPakshaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PitruPakshaData {

@JsonKey(name: 'header') PitruHeader? get header;@JsonKey(name: 'period') PitruPeriod? get period;@JsonKey(name: 'todayCard') PitruTodayCard? get todayCard;@JsonKey(name: 'count') int get count;@JsonKey(name: 'items') List<PitruItem> get items;@JsonKey(name: 'meta') PitruMeta? get meta;
/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPakshaDataCopyWith<PitruPakshaData> get copyWith => _$PitruPakshaDataCopyWithImpl<PitruPakshaData>(this as PitruPakshaData, _$identity);

  /// Serializes this PitruPakshaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPakshaData&&(identical(other.header, header) || other.header == header)&&(identical(other.period, period) || other.period == period)&&(identical(other.todayCard, todayCard) || other.todayCard == todayCard)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,period,todayCard,count,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'PitruPakshaData(header: $header, period: $period, todayCard: $todayCard, count: $count, items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PitruPakshaDataCopyWith<$Res>  {
  factory $PitruPakshaDataCopyWith(PitruPakshaData value, $Res Function(PitruPakshaData) _then) = _$PitruPakshaDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') PitruHeader? header,@JsonKey(name: 'period') PitruPeriod? period,@JsonKey(name: 'todayCard') PitruTodayCard? todayCard,@JsonKey(name: 'count') int count,@JsonKey(name: 'items') List<PitruItem> items,@JsonKey(name: 'meta') PitruMeta? meta
});


$PitruHeaderCopyWith<$Res>? get header;$PitruPeriodCopyWith<$Res>? get period;$PitruTodayCardCopyWith<$Res>? get todayCard;$PitruMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PitruPakshaDataCopyWithImpl<$Res>
    implements $PitruPakshaDataCopyWith<$Res> {
  _$PitruPakshaDataCopyWithImpl(this._self, this._then);

  final PitruPakshaData _self;
  final $Res Function(PitruPakshaData) _then;

/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = freezed,Object? period = freezed,Object? todayCard = freezed,Object? count = null,Object? items = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as PitruHeader?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PitruPeriod?,todayCard: freezed == todayCard ? _self.todayCard : todayCard // ignore: cast_nullable_to_non_nullable
as PitruTodayCard?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PitruItem>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PitruMeta?,
  ));
}
/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruHeaderCopyWith<$Res>? get header {
    if (_self.header == null) {
    return null;
  }

  return $PitruHeaderCopyWith<$Res>(_self.header!, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PitruPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruTodayCardCopyWith<$Res>? get todayCard {
    if (_self.todayCard == null) {
    return null;
  }

  return $PitruTodayCardCopyWith<$Res>(_self.todayCard!, (value) {
    return _then(_self.copyWith(todayCard: value));
  });
}/// Create a copy of PitruPakshaData
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


/// Adds pattern-matching-related methods to [PitruPakshaData].
extension PitruPakshaDataPatterns on PitruPakshaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPakshaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPakshaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPakshaData value)  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPakshaData value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPakshaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  PitruHeader? header, @JsonKey(name: 'period')  PitruPeriod? period, @JsonKey(name: 'todayCard')  PitruTodayCard? todayCard, @JsonKey(name: 'count')  int count, @JsonKey(name: 'items')  List<PitruItem> items, @JsonKey(name: 'meta')  PitruMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPakshaData() when $default != null:
return $default(_that.header,_that.period,_that.todayCard,_that.count,_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  PitruHeader? header, @JsonKey(name: 'period')  PitruPeriod? period, @JsonKey(name: 'todayCard')  PitruTodayCard? todayCard, @JsonKey(name: 'count')  int count, @JsonKey(name: 'items')  List<PitruItem> items, @JsonKey(name: 'meta')  PitruMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaData():
return $default(_that.header,_that.period,_that.todayCard,_that.count,_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  PitruHeader? header, @JsonKey(name: 'period')  PitruPeriod? period, @JsonKey(name: 'todayCard')  PitruTodayCard? todayCard, @JsonKey(name: 'count')  int count, @JsonKey(name: 'items')  List<PitruItem> items, @JsonKey(name: 'meta')  PitruMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _PitruPakshaData() when $default != null:
return $default(_that.header,_that.period,_that.todayCard,_that.count,_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPakshaData implements PitruPakshaData {
  const _PitruPakshaData({@JsonKey(name: 'header') this.header, @JsonKey(name: 'period') this.period, @JsonKey(name: 'todayCard') this.todayCard, @JsonKey(name: 'count') this.count = 0, @JsonKey(name: 'items') final  List<PitruItem> items = const <PitruItem>[], @JsonKey(name: 'meta') this.meta}): _items = items;
  factory _PitruPakshaData.fromJson(Map<String, dynamic> json) => _$PitruPakshaDataFromJson(json);

@override@JsonKey(name: 'header') final  PitruHeader? header;
@override@JsonKey(name: 'period') final  PitruPeriod? period;
@override@JsonKey(name: 'todayCard') final  PitruTodayCard? todayCard;
@override@JsonKey(name: 'count') final  int count;
 final  List<PitruItem> _items;
@override@JsonKey(name: 'items') List<PitruItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'meta') final  PitruMeta? meta;

/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPakshaDataCopyWith<_PitruPakshaData> get copyWith => __$PitruPakshaDataCopyWithImpl<_PitruPakshaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPakshaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPakshaData&&(identical(other.header, header) || other.header == header)&&(identical(other.period, period) || other.period == period)&&(identical(other.todayCard, todayCard) || other.todayCard == todayCard)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,period,todayCard,count,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'PitruPakshaData(header: $header, period: $period, todayCard: $todayCard, count: $count, items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PitruPakshaDataCopyWith<$Res> implements $PitruPakshaDataCopyWith<$Res> {
  factory _$PitruPakshaDataCopyWith(_PitruPakshaData value, $Res Function(_PitruPakshaData) _then) = __$PitruPakshaDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') PitruHeader? header,@JsonKey(name: 'period') PitruPeriod? period,@JsonKey(name: 'todayCard') PitruTodayCard? todayCard,@JsonKey(name: 'count') int count,@JsonKey(name: 'items') List<PitruItem> items,@JsonKey(name: 'meta') PitruMeta? meta
});


@override $PitruHeaderCopyWith<$Res>? get header;@override $PitruPeriodCopyWith<$Res>? get period;@override $PitruTodayCardCopyWith<$Res>? get todayCard;@override $PitruMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PitruPakshaDataCopyWithImpl<$Res>
    implements _$PitruPakshaDataCopyWith<$Res> {
  __$PitruPakshaDataCopyWithImpl(this._self, this._then);

  final _PitruPakshaData _self;
  final $Res Function(_PitruPakshaData) _then;

/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = freezed,Object? period = freezed,Object? todayCard = freezed,Object? count = null,Object? items = null,Object? meta = freezed,}) {
  return _then(_PitruPakshaData(
header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as PitruHeader?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PitruPeriod?,todayCard: freezed == todayCard ? _self.todayCard : todayCard // ignore: cast_nullable_to_non_nullable
as PitruTodayCard?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PitruItem>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PitruMeta?,
  ));
}

/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruHeaderCopyWith<$Res>? get header {
    if (_self.header == null) {
    return null;
  }

  return $PitruHeaderCopyWith<$Res>(_self.header!, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PitruPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of PitruPakshaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PitruTodayCardCopyWith<$Res>? get todayCard {
    if (_self.todayCard == null) {
    return null;
  }

  return $PitruTodayCardCopyWith<$Res>(_self.todayCard!, (value) {
    return _then(_self.copyWith(todayCard: value));
  });
}/// Create a copy of PitruPakshaData
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
mixin _$PitruHeader {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'subtitle') String get subtitle;
/// Create a copy of PitruHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruHeaderCopyWith<PitruHeader> get copyWith => _$PitruHeaderCopyWithImpl<PitruHeader>(this as PitruHeader, _$identity);

  /// Serializes this PitruHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruHeader&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle);

@override
String toString() {
  return 'PitruHeader(title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class $PitruHeaderCopyWith<$Res>  {
  factory $PitruHeaderCopyWith(PitruHeader value, $Res Function(PitruHeader) _then) = _$PitruHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'subtitle') String subtitle
});




}
/// @nodoc
class _$PitruHeaderCopyWithImpl<$Res>
    implements $PitruHeaderCopyWith<$Res> {
  _$PitruHeaderCopyWithImpl(this._self, this._then);

  final PitruHeader _self;
  final $Res Function(PitruHeader) _then;

/// Create a copy of PitruHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruHeader].
extension PitruHeaderPatterns on PitruHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruHeader value)  $default,){
final _that = this;
switch (_that) {
case _PitruHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruHeader value)?  $default,){
final _that = this;
switch (_that) {
case _PitruHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruHeader() when $default != null:
return $default(_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle)  $default,) {final _that = this;
switch (_that) {
case _PitruHeader():
return $default(_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle)?  $default,) {final _that = this;
switch (_that) {
case _PitruHeader() when $default != null:
return $default(_that.title,_that.subtitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruHeader implements PitruHeader {
  const _PitruHeader({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'subtitle') this.subtitle = ''});
  factory _PitruHeader.fromJson(Map<String, dynamic> json) => _$PitruHeaderFromJson(json);

@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'subtitle') final  String subtitle;

/// Create a copy of PitruHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruHeaderCopyWith<_PitruHeader> get copyWith => __$PitruHeaderCopyWithImpl<_PitruHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruHeader&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle);

@override
String toString() {
  return 'PitruHeader(title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class _$PitruHeaderCopyWith<$Res> implements $PitruHeaderCopyWith<$Res> {
  factory _$PitruHeaderCopyWith(_PitruHeader value, $Res Function(_PitruHeader) _then) = __$PitruHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'subtitle') String subtitle
});




}
/// @nodoc
class __$PitruHeaderCopyWithImpl<$Res>
    implements _$PitruHeaderCopyWith<$Res> {
  __$PitruHeaderCopyWithImpl(this._self, this._then);

  final _PitruHeader _self;
  final $Res Function(_PitruHeader) _then;

/// Create a copy of PitruHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = null,}) {
  return _then(_PitruHeader(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PitruPeriod {

@JsonKey(name: 'label') String get label;@JsonKey(name: 'rangeLabel') String get rangeLabel;@JsonKey(name: 'start') String get start;@JsonKey(name: 'end') String get end;@JsonKey(name: 'year') int get year;
/// Create a copy of PitruPeriod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruPeriodCopyWith<PitruPeriod> get copyWith => _$PitruPeriodCopyWithImpl<PitruPeriod>(this as PitruPeriod, _$identity);

  /// Serializes this PitruPeriod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruPeriod&&(identical(other.label, label) || other.label == label)&&(identical(other.rangeLabel, rangeLabel) || other.rangeLabel == rangeLabel)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,rangeLabel,start,end,year);

@override
String toString() {
  return 'PitruPeriod(label: $label, rangeLabel: $rangeLabel, start: $start, end: $end, year: $year)';
}


}

/// @nodoc
abstract mixin class $PitruPeriodCopyWith<$Res>  {
  factory $PitruPeriodCopyWith(PitruPeriod value, $Res Function(PitruPeriod) _then) = _$PitruPeriodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'rangeLabel') String rangeLabel,@JsonKey(name: 'start') String start,@JsonKey(name: 'end') String end,@JsonKey(name: 'year') int year
});




}
/// @nodoc
class _$PitruPeriodCopyWithImpl<$Res>
    implements $PitruPeriodCopyWith<$Res> {
  _$PitruPeriodCopyWithImpl(this._self, this._then);

  final PitruPeriod _self;
  final $Res Function(PitruPeriod) _then;

/// Create a copy of PitruPeriod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? rangeLabel = null,Object? start = null,Object? end = null,Object? year = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruPeriod].
extension PitruPeriodPatterns on PitruPeriod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruPeriod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruPeriod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruPeriod value)  $default,){
final _that = this;
switch (_that) {
case _PitruPeriod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruPeriod value)?  $default,){
final _that = this;
switch (_that) {
case _PitruPeriod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'rangeLabel')  String rangeLabel, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end, @JsonKey(name: 'year')  int year)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruPeriod() when $default != null:
return $default(_that.label,_that.rangeLabel,_that.start,_that.end,_that.year);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'rangeLabel')  String rangeLabel, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end, @JsonKey(name: 'year')  int year)  $default,) {final _that = this;
switch (_that) {
case _PitruPeriod():
return $default(_that.label,_that.rangeLabel,_that.start,_that.end,_that.year);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'rangeLabel')  String rangeLabel, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end, @JsonKey(name: 'year')  int year)?  $default,) {final _that = this;
switch (_that) {
case _PitruPeriod() when $default != null:
return $default(_that.label,_that.rangeLabel,_that.start,_that.end,_that.year);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruPeriod implements PitruPeriod {
  const _PitruPeriod({@JsonKey(name: 'label') this.label = '', @JsonKey(name: 'rangeLabel') this.rangeLabel = '', @JsonKey(name: 'start') this.start = '', @JsonKey(name: 'end') this.end = '', @JsonKey(name: 'year') this.year = 0});
  factory _PitruPeriod.fromJson(Map<String, dynamic> json) => _$PitruPeriodFromJson(json);

@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'rangeLabel') final  String rangeLabel;
@override@JsonKey(name: 'start') final  String start;
@override@JsonKey(name: 'end') final  String end;
@override@JsonKey(name: 'year') final  int year;

/// Create a copy of PitruPeriod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruPeriodCopyWith<_PitruPeriod> get copyWith => __$PitruPeriodCopyWithImpl<_PitruPeriod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruPeriodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruPeriod&&(identical(other.label, label) || other.label == label)&&(identical(other.rangeLabel, rangeLabel) || other.rangeLabel == rangeLabel)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,rangeLabel,start,end,year);

@override
String toString() {
  return 'PitruPeriod(label: $label, rangeLabel: $rangeLabel, start: $start, end: $end, year: $year)';
}


}

/// @nodoc
abstract mixin class _$PitruPeriodCopyWith<$Res> implements $PitruPeriodCopyWith<$Res> {
  factory _$PitruPeriodCopyWith(_PitruPeriod value, $Res Function(_PitruPeriod) _then) = __$PitruPeriodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'rangeLabel') String rangeLabel,@JsonKey(name: 'start') String start,@JsonKey(name: 'end') String end,@JsonKey(name: 'year') int year
});




}
/// @nodoc
class __$PitruPeriodCopyWithImpl<$Res>
    implements _$PitruPeriodCopyWith<$Res> {
  __$PitruPeriodCopyWithImpl(this._self, this._then);

  final _PitruPeriod _self;
  final $Res Function(_PitruPeriod) _then;

/// Create a copy of PitruPeriod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? rangeLabel = null,Object? start = null,Object? end = null,Object? year = null,}) {
  return _then(_PitruPeriod(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PitruTodayCard {

@JsonKey(name: 'isToday') bool get isToday;@JsonKey(name: 'badge') String get badge;@JsonKey(name: 'title') String get title;@JsonKey(name: 'dateLine') String get dateLine;@JsonKey(name: 'kutupMuhurat') MuhuratTiming? get kutupMuhurat;@JsonKey(name: 'aparahnaKaal') MuhuratTiming? get aparahnaKaal;@JsonKey(name: 'date') String get date;@JsonKey(name: 'shraddhaType') String get shraddhaType;@JsonKey(name: 'shraddhaTitle') String get shraddhaTitle;
/// Create a copy of PitruTodayCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruTodayCardCopyWith<PitruTodayCard> get copyWith => _$PitruTodayCardCopyWithImpl<PitruTodayCard>(this as PitruTodayCard, _$identity);

  /// Serializes this PitruTodayCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruTodayCard&&(identical(other.isToday, isToday) || other.isToday == isToday)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.title, title) || other.title == title)&&(identical(other.dateLine, dateLine) || other.dateLine == dateLine)&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal)&&(identical(other.date, date) || other.date == date)&&(identical(other.shraddhaType, shraddhaType) || other.shraddhaType == shraddhaType)&&(identical(other.shraddhaTitle, shraddhaTitle) || other.shraddhaTitle == shraddhaTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isToday,badge,title,dateLine,kutupMuhurat,aparahnaKaal,date,shraddhaType,shraddhaTitle);

@override
String toString() {
  return 'PitruTodayCard(isToday: $isToday, badge: $badge, title: $title, dateLine: $dateLine, kutupMuhurat: $kutupMuhurat, aparahnaKaal: $aparahnaKaal, date: $date, shraddhaType: $shraddhaType, shraddhaTitle: $shraddhaTitle)';
}


}

/// @nodoc
abstract mixin class $PitruTodayCardCopyWith<$Res>  {
  factory $PitruTodayCardCopyWith(PitruTodayCard value, $Res Function(PitruTodayCard) _then) = _$PitruTodayCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isToday') bool isToday,@JsonKey(name: 'badge') String badge,@JsonKey(name: 'title') String title,@JsonKey(name: 'dateLine') String dateLine,@JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,@JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,@JsonKey(name: 'date') String date,@JsonKey(name: 'shraddhaType') String shraddhaType,@JsonKey(name: 'shraddhaTitle') String shraddhaTitle
});


$MuhuratTimingCopyWith<$Res>? get kutupMuhurat;$MuhuratTimingCopyWith<$Res>? get aparahnaKaal;

}
/// @nodoc
class _$PitruTodayCardCopyWithImpl<$Res>
    implements $PitruTodayCardCopyWith<$Res> {
  _$PitruTodayCardCopyWithImpl(this._self, this._then);

  final PitruTodayCard _self;
  final $Res Function(PitruTodayCard) _then;

/// Create a copy of PitruTodayCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isToday = null,Object? badge = null,Object? title = null,Object? dateLine = null,Object? kutupMuhurat = freezed,Object? aparahnaKaal = freezed,Object? date = null,Object? shraddhaType = null,Object? shraddhaTitle = null,}) {
  return _then(_self.copyWith(
isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateLine: null == dateLine ? _self.dateLine : dateLine // ignore: cast_nullable_to_non_nullable
as String,kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,shraddhaType: null == shraddhaType ? _self.shraddhaType : shraddhaType // ignore: cast_nullable_to_non_nullable
as String,shraddhaTitle: null == shraddhaTitle ? _self.shraddhaTitle : shraddhaTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PitruTodayCard
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
}/// Create a copy of PitruTodayCard
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


/// Adds pattern-matching-related methods to [PitruTodayCard].
extension PitruTodayCardPatterns on PitruTodayCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruTodayCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruTodayCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruTodayCard value)  $default,){
final _that = this;
switch (_that) {
case _PitruTodayCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruTodayCard value)?  $default,){
final _that = this;
switch (_that) {
case _PitruTodayCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'badge')  String badge, @JsonKey(name: 'title')  String title, @JsonKey(name: 'dateLine')  String dateLine, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'date')  String date, @JsonKey(name: 'shraddhaType')  String shraddhaType, @JsonKey(name: 'shraddhaTitle')  String shraddhaTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruTodayCard() when $default != null:
return $default(_that.isToday,_that.badge,_that.title,_that.dateLine,_that.kutupMuhurat,_that.aparahnaKaal,_that.date,_that.shraddhaType,_that.shraddhaTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'badge')  String badge, @JsonKey(name: 'title')  String title, @JsonKey(name: 'dateLine')  String dateLine, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'date')  String date, @JsonKey(name: 'shraddhaType')  String shraddhaType, @JsonKey(name: 'shraddhaTitle')  String shraddhaTitle)  $default,) {final _that = this;
switch (_that) {
case _PitruTodayCard():
return $default(_that.isToday,_that.badge,_that.title,_that.dateLine,_that.kutupMuhurat,_that.aparahnaKaal,_that.date,_that.shraddhaType,_that.shraddhaTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'badge')  String badge, @JsonKey(name: 'title')  String title, @JsonKey(name: 'dateLine')  String dateLine, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'date')  String date, @JsonKey(name: 'shraddhaType')  String shraddhaType, @JsonKey(name: 'shraddhaTitle')  String shraddhaTitle)?  $default,) {final _that = this;
switch (_that) {
case _PitruTodayCard() when $default != null:
return $default(_that.isToday,_that.badge,_that.title,_that.dateLine,_that.kutupMuhurat,_that.aparahnaKaal,_that.date,_that.shraddhaType,_that.shraddhaTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruTodayCard implements PitruTodayCard {
  const _PitruTodayCard({@JsonKey(name: 'isToday') this.isToday = false, @JsonKey(name: 'badge') this.badge = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'dateLine') this.dateLine = '', @JsonKey(name: 'kutupMuhurat') this.kutupMuhurat, @JsonKey(name: 'aparahnaKaal') this.aparahnaKaal, @JsonKey(name: 'date') this.date = '', @JsonKey(name: 'shraddhaType') this.shraddhaType = '', @JsonKey(name: 'shraddhaTitle') this.shraddhaTitle = ''});
  factory _PitruTodayCard.fromJson(Map<String, dynamic> json) => _$PitruTodayCardFromJson(json);

@override@JsonKey(name: 'isToday') final  bool isToday;
@override@JsonKey(name: 'badge') final  String badge;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'dateLine') final  String dateLine;
@override@JsonKey(name: 'kutupMuhurat') final  MuhuratTiming? kutupMuhurat;
@override@JsonKey(name: 'aparahnaKaal') final  MuhuratTiming? aparahnaKaal;
@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'shraddhaType') final  String shraddhaType;
@override@JsonKey(name: 'shraddhaTitle') final  String shraddhaTitle;

/// Create a copy of PitruTodayCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruTodayCardCopyWith<_PitruTodayCard> get copyWith => __$PitruTodayCardCopyWithImpl<_PitruTodayCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruTodayCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruTodayCard&&(identical(other.isToday, isToday) || other.isToday == isToday)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.title, title) || other.title == title)&&(identical(other.dateLine, dateLine) || other.dateLine == dateLine)&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal)&&(identical(other.date, date) || other.date == date)&&(identical(other.shraddhaType, shraddhaType) || other.shraddhaType == shraddhaType)&&(identical(other.shraddhaTitle, shraddhaTitle) || other.shraddhaTitle == shraddhaTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isToday,badge,title,dateLine,kutupMuhurat,aparahnaKaal,date,shraddhaType,shraddhaTitle);

@override
String toString() {
  return 'PitruTodayCard(isToday: $isToday, badge: $badge, title: $title, dateLine: $dateLine, kutupMuhurat: $kutupMuhurat, aparahnaKaal: $aparahnaKaal, date: $date, shraddhaType: $shraddhaType, shraddhaTitle: $shraddhaTitle)';
}


}

/// @nodoc
abstract mixin class _$PitruTodayCardCopyWith<$Res> implements $PitruTodayCardCopyWith<$Res> {
  factory _$PitruTodayCardCopyWith(_PitruTodayCard value, $Res Function(_PitruTodayCard) _then) = __$PitruTodayCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isToday') bool isToday,@JsonKey(name: 'badge') String badge,@JsonKey(name: 'title') String title,@JsonKey(name: 'dateLine') String dateLine,@JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,@JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,@JsonKey(name: 'date') String date,@JsonKey(name: 'shraddhaType') String shraddhaType,@JsonKey(name: 'shraddhaTitle') String shraddhaTitle
});


@override $MuhuratTimingCopyWith<$Res>? get kutupMuhurat;@override $MuhuratTimingCopyWith<$Res>? get aparahnaKaal;

}
/// @nodoc
class __$PitruTodayCardCopyWithImpl<$Res>
    implements _$PitruTodayCardCopyWith<$Res> {
  __$PitruTodayCardCopyWithImpl(this._self, this._then);

  final _PitruTodayCard _self;
  final $Res Function(_PitruTodayCard) _then;

/// Create a copy of PitruTodayCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isToday = null,Object? badge = null,Object? title = null,Object? dateLine = null,Object? kutupMuhurat = freezed,Object? aparahnaKaal = freezed,Object? date = null,Object? shraddhaType = null,Object? shraddhaTitle = null,}) {
  return _then(_PitruTodayCard(
isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateLine: null == dateLine ? _self.dateLine : dateLine // ignore: cast_nullable_to_non_nullable
as String,kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,shraddhaType: null == shraddhaType ? _self.shraddhaType : shraddhaType // ignore: cast_nullable_to_non_nullable
as String,shraddhaTitle: null == shraddhaTitle ? _self.shraddhaTitle : shraddhaTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PitruTodayCard
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
}/// Create a copy of PitruTodayCard
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
mixin _$MuhuratTiming {

@JsonKey(name: 'label') String get label;@JsonKey(name: 'display') String get display;@JsonKey(name: 'start') String get start;@JsonKey(name: 'end') String get end;
/// Create a copy of MuhuratTiming
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuhuratTimingCopyWith<MuhuratTiming> get copyWith => _$MuhuratTimingCopyWithImpl<MuhuratTiming>(this as MuhuratTiming, _$identity);

  /// Serializes this MuhuratTiming to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuhuratTiming&&(identical(other.label, label) || other.label == label)&&(identical(other.display, display) || other.display == display)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,display,start,end);

@override
String toString() {
  return 'MuhuratTiming(label: $label, display: $display, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $MuhuratTimingCopyWith<$Res>  {
  factory $MuhuratTimingCopyWith(MuhuratTiming value, $Res Function(MuhuratTiming) _then) = _$MuhuratTimingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'display') String display,@JsonKey(name: 'start') String start,@JsonKey(name: 'end') String end
});




}
/// @nodoc
class _$MuhuratTimingCopyWithImpl<$Res>
    implements $MuhuratTimingCopyWith<$Res> {
  _$MuhuratTimingCopyWithImpl(this._self, this._then);

  final MuhuratTiming _self;
  final $Res Function(MuhuratTiming) _then;

/// Create a copy of MuhuratTiming
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? display = null,Object? start = null,Object? end = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MuhuratTiming].
extension MuhuratTimingPatterns on MuhuratTiming {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuhuratTiming value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuhuratTiming() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuhuratTiming value)  $default,){
final _that = this;
switch (_that) {
case _MuhuratTiming():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuhuratTiming value)?  $default,){
final _that = this;
switch (_that) {
case _MuhuratTiming() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'display')  String display, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuhuratTiming() when $default != null:
return $default(_that.label,_that.display,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'display')  String display, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end)  $default,) {final _that = this;
switch (_that) {
case _MuhuratTiming():
return $default(_that.label,_that.display,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'display')  String display, @JsonKey(name: 'start')  String start, @JsonKey(name: 'end')  String end)?  $default,) {final _that = this;
switch (_that) {
case _MuhuratTiming() when $default != null:
return $default(_that.label,_that.display,_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuhuratTiming implements MuhuratTiming {
  const _MuhuratTiming({@JsonKey(name: 'label') this.label = '', @JsonKey(name: 'display') this.display = '', @JsonKey(name: 'start') this.start = '', @JsonKey(name: 'end') this.end = ''});
  factory _MuhuratTiming.fromJson(Map<String, dynamic> json) => _$MuhuratTimingFromJson(json);

@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'display') final  String display;
@override@JsonKey(name: 'start') final  String start;
@override@JsonKey(name: 'end') final  String end;

/// Create a copy of MuhuratTiming
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuhuratTimingCopyWith<_MuhuratTiming> get copyWith => __$MuhuratTimingCopyWithImpl<_MuhuratTiming>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuhuratTimingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuhuratTiming&&(identical(other.label, label) || other.label == label)&&(identical(other.display, display) || other.display == display)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,display,start,end);

@override
String toString() {
  return 'MuhuratTiming(label: $label, display: $display, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$MuhuratTimingCopyWith<$Res> implements $MuhuratTimingCopyWith<$Res> {
  factory _$MuhuratTimingCopyWith(_MuhuratTiming value, $Res Function(_MuhuratTiming) _then) = __$MuhuratTimingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'display') String display,@JsonKey(name: 'start') String start,@JsonKey(name: 'end') String end
});




}
/// @nodoc
class __$MuhuratTimingCopyWithImpl<$Res>
    implements _$MuhuratTimingCopyWith<$Res> {
  __$MuhuratTimingCopyWithImpl(this._self, this._then);

  final _MuhuratTiming _self;
  final $Res Function(_MuhuratTiming) _then;

/// Create a copy of MuhuratTiming
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? display = null,Object? start = null,Object? end = null,}) {
  return _then(_MuhuratTiming(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PitruItem {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'title') String get title;@JsonKey(name: 'date') String get date;@JsonKey(name: 'dateDisplay') String get dateDisplay;@JsonKey(name: 'dayName') String get dayName;@JsonKey(name: 'category') String get category;@JsonKey(name: 'categoryLabel') String get categoryLabel;@JsonKey(name: 'shortDescription') String get shortDescription;@JsonKey(name: 'isToday') bool get isToday;@JsonKey(name: 'isPitruPaksha') bool get isPitruPaksha;@JsonKey(name: 'isShraddhaDay') bool get isShraddhaDay;@JsonKey(name: 'specialTags') List<String> get specialTags;@JsonKey(name: 'dayIndex') int get dayIndex;@JsonKey(name: 'aparahnaKaal') MuhuratTiming? get aparahnaKaal;@JsonKey(name: 'kutupMuhurat') MuhuratTiming? get kutupMuhurat;@JsonKey(name: 'rohinaMuhurat') MuhuratTiming? get rohinaMuhurat;
/// Create a copy of PitruItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruItemCopyWith<PitruItem> get copyWith => _$PitruItemCopyWithImpl<PitruItem>(this as PitruItem, _$identity);

  /// Serializes this PitruItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruItem&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.dayName, dayName) || other.dayName == dayName)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryLabel, categoryLabel) || other.categoryLabel == categoryLabel)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.isToday, isToday) || other.isToday == isToday)&&(identical(other.isPitruPaksha, isPitruPaksha) || other.isPitruPaksha == isPitruPaksha)&&(identical(other.isShraddhaDay, isShraddhaDay) || other.isShraddhaDay == isShraddhaDay)&&const DeepCollectionEquality().equals(other.specialTags, specialTags)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal)&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.rohinaMuhurat, rohinaMuhurat) || other.rohinaMuhurat == rohinaMuhurat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,title,date,dateDisplay,dayName,category,categoryLabel,shortDescription,isToday,isPitruPaksha,isShraddhaDay,const DeepCollectionEquality().hash(specialTags),dayIndex,aparahnaKaal,kutupMuhurat,rohinaMuhurat);

@override
String toString() {
  return 'PitruItem(id: $id, slug: $slug, title: $title, date: $date, dateDisplay: $dateDisplay, dayName: $dayName, category: $category, categoryLabel: $categoryLabel, shortDescription: $shortDescription, isToday: $isToday, isPitruPaksha: $isPitruPaksha, isShraddhaDay: $isShraddhaDay, specialTags: $specialTags, dayIndex: $dayIndex, aparahnaKaal: $aparahnaKaal, kutupMuhurat: $kutupMuhurat, rohinaMuhurat: $rohinaMuhurat)';
}


}

/// @nodoc
abstract mixin class $PitruItemCopyWith<$Res>  {
  factory $PitruItemCopyWith(PitruItem value, $Res Function(PitruItem) _then) = _$PitruItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'title') String title,@JsonKey(name: 'date') String date,@JsonKey(name: 'dateDisplay') String dateDisplay,@JsonKey(name: 'dayName') String dayName,@JsonKey(name: 'category') String category,@JsonKey(name: 'categoryLabel') String categoryLabel,@JsonKey(name: 'shortDescription') String shortDescription,@JsonKey(name: 'isToday') bool isToday,@JsonKey(name: 'isPitruPaksha') bool isPitruPaksha,@JsonKey(name: 'isShraddhaDay') bool isShraddhaDay,@JsonKey(name: 'specialTags') List<String> specialTags,@JsonKey(name: 'dayIndex') int dayIndex,@JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,@JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,@JsonKey(name: 'rohinaMuhurat') MuhuratTiming? rohinaMuhurat
});


$MuhuratTimingCopyWith<$Res>? get aparahnaKaal;$MuhuratTimingCopyWith<$Res>? get kutupMuhurat;$MuhuratTimingCopyWith<$Res>? get rohinaMuhurat;

}
/// @nodoc
class _$PitruItemCopyWithImpl<$Res>
    implements $PitruItemCopyWith<$Res> {
  _$PitruItemCopyWithImpl(this._self, this._then);

  final PitruItem _self;
  final $Res Function(PitruItem) _then;

/// Create a copy of PitruItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? title = null,Object? date = null,Object? dateDisplay = null,Object? dayName = null,Object? category = null,Object? categoryLabel = null,Object? shortDescription = null,Object? isToday = null,Object? isPitruPaksha = null,Object? isShraddhaDay = null,Object? specialTags = null,Object? dayIndex = null,Object? aparahnaKaal = freezed,Object? kutupMuhurat = freezed,Object? rohinaMuhurat = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,dayName: null == dayName ? _self.dayName : dayName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryLabel: null == categoryLabel ? _self.categoryLabel : categoryLabel // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,isPitruPaksha: null == isPitruPaksha ? _self.isPitruPaksha : isPitruPaksha // ignore: cast_nullable_to_non_nullable
as bool,isShraddhaDay: null == isShraddhaDay ? _self.isShraddhaDay : isShraddhaDay // ignore: cast_nullable_to_non_nullable
as bool,specialTags: null == specialTags ? _self.specialTags : specialTags // ignore: cast_nullable_to_non_nullable
as List<String>,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,rohinaMuhurat: freezed == rohinaMuhurat ? _self.rohinaMuhurat : rohinaMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,
  ));
}
/// Create a copy of PitruItem
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
}/// Create a copy of PitruItem
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
}/// Create a copy of PitruItem
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
}
}


/// Adds pattern-matching-related methods to [PitruItem].
extension PitruItemPatterns on PitruItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruItem value)  $default,){
final _that = this;
switch (_that) {
case _PitruItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruItem value)?  $default,){
final _that = this;
switch (_that) {
case _PitruItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'title')  String title, @JsonKey(name: 'date')  String date, @JsonKey(name: 'dateDisplay')  String dateDisplay, @JsonKey(name: 'dayName')  String dayName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'categoryLabel')  String categoryLabel, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'isPitruPaksha')  bool isPitruPaksha, @JsonKey(name: 'isShraddhaDay')  bool isShraddhaDay, @JsonKey(name: 'specialTags')  List<String> specialTags, @JsonKey(name: 'dayIndex')  int dayIndex, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'rohinaMuhurat')  MuhuratTiming? rohinaMuhurat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruItem() when $default != null:
return $default(_that.id,_that.slug,_that.title,_that.date,_that.dateDisplay,_that.dayName,_that.category,_that.categoryLabel,_that.shortDescription,_that.isToday,_that.isPitruPaksha,_that.isShraddhaDay,_that.specialTags,_that.dayIndex,_that.aparahnaKaal,_that.kutupMuhurat,_that.rohinaMuhurat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'title')  String title, @JsonKey(name: 'date')  String date, @JsonKey(name: 'dateDisplay')  String dateDisplay, @JsonKey(name: 'dayName')  String dayName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'categoryLabel')  String categoryLabel, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'isPitruPaksha')  bool isPitruPaksha, @JsonKey(name: 'isShraddhaDay')  bool isShraddhaDay, @JsonKey(name: 'specialTags')  List<String> specialTags, @JsonKey(name: 'dayIndex')  int dayIndex, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'rohinaMuhurat')  MuhuratTiming? rohinaMuhurat)  $default,) {final _that = this;
switch (_that) {
case _PitruItem():
return $default(_that.id,_that.slug,_that.title,_that.date,_that.dateDisplay,_that.dayName,_that.category,_that.categoryLabel,_that.shortDescription,_that.isToday,_that.isPitruPaksha,_that.isShraddhaDay,_that.specialTags,_that.dayIndex,_that.aparahnaKaal,_that.kutupMuhurat,_that.rohinaMuhurat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'title')  String title, @JsonKey(name: 'date')  String date, @JsonKey(name: 'dateDisplay')  String dateDisplay, @JsonKey(name: 'dayName')  String dayName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'categoryLabel')  String categoryLabel, @JsonKey(name: 'shortDescription')  String shortDescription, @JsonKey(name: 'isToday')  bool isToday, @JsonKey(name: 'isPitruPaksha')  bool isPitruPaksha, @JsonKey(name: 'isShraddhaDay')  bool isShraddhaDay, @JsonKey(name: 'specialTags')  List<String> specialTags, @JsonKey(name: 'dayIndex')  int dayIndex, @JsonKey(name: 'aparahnaKaal')  MuhuratTiming? aparahnaKaal, @JsonKey(name: 'kutupMuhurat')  MuhuratTiming? kutupMuhurat, @JsonKey(name: 'rohinaMuhurat')  MuhuratTiming? rohinaMuhurat)?  $default,) {final _that = this;
switch (_that) {
case _PitruItem() when $default != null:
return $default(_that.id,_that.slug,_that.title,_that.date,_that.dateDisplay,_that.dayName,_that.category,_that.categoryLabel,_that.shortDescription,_that.isToday,_that.isPitruPaksha,_that.isShraddhaDay,_that.specialTags,_that.dayIndex,_that.aparahnaKaal,_that.kutupMuhurat,_that.rohinaMuhurat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruItem implements PitruItem {
  const _PitruItem({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'date') this.date = '', @JsonKey(name: 'dateDisplay') this.dateDisplay = '', @JsonKey(name: 'dayName') this.dayName = '', @JsonKey(name: 'category') this.category = '', @JsonKey(name: 'categoryLabel') this.categoryLabel = '', @JsonKey(name: 'shortDescription') this.shortDescription = '', @JsonKey(name: 'isToday') this.isToday = false, @JsonKey(name: 'isPitruPaksha') this.isPitruPaksha = false, @JsonKey(name: 'isShraddhaDay') this.isShraddhaDay = false, @JsonKey(name: 'specialTags') final  List<String> specialTags = const <String>[], @JsonKey(name: 'dayIndex') this.dayIndex = 0, @JsonKey(name: 'aparahnaKaal') this.aparahnaKaal, @JsonKey(name: 'kutupMuhurat') this.kutupMuhurat, @JsonKey(name: 'rohinaMuhurat') this.rohinaMuhurat}): _specialTags = specialTags;
  factory _PitruItem.fromJson(Map<String, dynamic> json) => _$PitruItemFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'dateDisplay') final  String dateDisplay;
@override@JsonKey(name: 'dayName') final  String dayName;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'categoryLabel') final  String categoryLabel;
@override@JsonKey(name: 'shortDescription') final  String shortDescription;
@override@JsonKey(name: 'isToday') final  bool isToday;
@override@JsonKey(name: 'isPitruPaksha') final  bool isPitruPaksha;
@override@JsonKey(name: 'isShraddhaDay') final  bool isShraddhaDay;
 final  List<String> _specialTags;
@override@JsonKey(name: 'specialTags') List<String> get specialTags {
  if (_specialTags is EqualUnmodifiableListView) return _specialTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialTags);
}

@override@JsonKey(name: 'dayIndex') final  int dayIndex;
@override@JsonKey(name: 'aparahnaKaal') final  MuhuratTiming? aparahnaKaal;
@override@JsonKey(name: 'kutupMuhurat') final  MuhuratTiming? kutupMuhurat;
@override@JsonKey(name: 'rohinaMuhurat') final  MuhuratTiming? rohinaMuhurat;

/// Create a copy of PitruItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruItemCopyWith<_PitruItem> get copyWith => __$PitruItemCopyWithImpl<_PitruItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruItem&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.dayName, dayName) || other.dayName == dayName)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryLabel, categoryLabel) || other.categoryLabel == categoryLabel)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.isToday, isToday) || other.isToday == isToday)&&(identical(other.isPitruPaksha, isPitruPaksha) || other.isPitruPaksha == isPitruPaksha)&&(identical(other.isShraddhaDay, isShraddhaDay) || other.isShraddhaDay == isShraddhaDay)&&const DeepCollectionEquality().equals(other._specialTags, _specialTags)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.aparahnaKaal, aparahnaKaal) || other.aparahnaKaal == aparahnaKaal)&&(identical(other.kutupMuhurat, kutupMuhurat) || other.kutupMuhurat == kutupMuhurat)&&(identical(other.rohinaMuhurat, rohinaMuhurat) || other.rohinaMuhurat == rohinaMuhurat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,title,date,dateDisplay,dayName,category,categoryLabel,shortDescription,isToday,isPitruPaksha,isShraddhaDay,const DeepCollectionEquality().hash(_specialTags),dayIndex,aparahnaKaal,kutupMuhurat,rohinaMuhurat);

@override
String toString() {
  return 'PitruItem(id: $id, slug: $slug, title: $title, date: $date, dateDisplay: $dateDisplay, dayName: $dayName, category: $category, categoryLabel: $categoryLabel, shortDescription: $shortDescription, isToday: $isToday, isPitruPaksha: $isPitruPaksha, isShraddhaDay: $isShraddhaDay, specialTags: $specialTags, dayIndex: $dayIndex, aparahnaKaal: $aparahnaKaal, kutupMuhurat: $kutupMuhurat, rohinaMuhurat: $rohinaMuhurat)';
}


}

/// @nodoc
abstract mixin class _$PitruItemCopyWith<$Res> implements $PitruItemCopyWith<$Res> {
  factory _$PitruItemCopyWith(_PitruItem value, $Res Function(_PitruItem) _then) = __$PitruItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'title') String title,@JsonKey(name: 'date') String date,@JsonKey(name: 'dateDisplay') String dateDisplay,@JsonKey(name: 'dayName') String dayName,@JsonKey(name: 'category') String category,@JsonKey(name: 'categoryLabel') String categoryLabel,@JsonKey(name: 'shortDescription') String shortDescription,@JsonKey(name: 'isToday') bool isToday,@JsonKey(name: 'isPitruPaksha') bool isPitruPaksha,@JsonKey(name: 'isShraddhaDay') bool isShraddhaDay,@JsonKey(name: 'specialTags') List<String> specialTags,@JsonKey(name: 'dayIndex') int dayIndex,@JsonKey(name: 'aparahnaKaal') MuhuratTiming? aparahnaKaal,@JsonKey(name: 'kutupMuhurat') MuhuratTiming? kutupMuhurat,@JsonKey(name: 'rohinaMuhurat') MuhuratTiming? rohinaMuhurat
});


@override $MuhuratTimingCopyWith<$Res>? get aparahnaKaal;@override $MuhuratTimingCopyWith<$Res>? get kutupMuhurat;@override $MuhuratTimingCopyWith<$Res>? get rohinaMuhurat;

}
/// @nodoc
class __$PitruItemCopyWithImpl<$Res>
    implements _$PitruItemCopyWith<$Res> {
  __$PitruItemCopyWithImpl(this._self, this._then);

  final _PitruItem _self;
  final $Res Function(_PitruItem) _then;

/// Create a copy of PitruItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? title = null,Object? date = null,Object? dateDisplay = null,Object? dayName = null,Object? category = null,Object? categoryLabel = null,Object? shortDescription = null,Object? isToday = null,Object? isPitruPaksha = null,Object? isShraddhaDay = null,Object? specialTags = null,Object? dayIndex = null,Object? aparahnaKaal = freezed,Object? kutupMuhurat = freezed,Object? rohinaMuhurat = freezed,}) {
  return _then(_PitruItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,dayName: null == dayName ? _self.dayName : dayName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryLabel: null == categoryLabel ? _self.categoryLabel : categoryLabel // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,isPitruPaksha: null == isPitruPaksha ? _self.isPitruPaksha : isPitruPaksha // ignore: cast_nullable_to_non_nullable
as bool,isShraddhaDay: null == isShraddhaDay ? _self.isShraddhaDay : isShraddhaDay // ignore: cast_nullable_to_non_nullable
as bool,specialTags: null == specialTags ? _self._specialTags : specialTags // ignore: cast_nullable_to_non_nullable
as List<String>,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,aparahnaKaal: freezed == aparahnaKaal ? _self.aparahnaKaal : aparahnaKaal // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,kutupMuhurat: freezed == kutupMuhurat ? _self.kutupMuhurat : kutupMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,rohinaMuhurat: freezed == rohinaMuhurat ? _self.rohinaMuhurat : rohinaMuhurat // ignore: cast_nullable_to_non_nullable
as MuhuratTiming?,
  ));
}

/// Create a copy of PitruItem
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
}/// Create a copy of PitruItem
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
}/// Create a copy of PitruItem
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
}
}


/// @nodoc
mixin _$PitruMeta {

@JsonKey(name: 'latitude') double get latitude;@JsonKey(name: 'longitude') double get longitude;@JsonKey(name: 'timezone') String get timezone;@JsonKey(name: 'source') String get source;
/// Create a copy of PitruMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PitruMetaCopyWith<PitruMeta> get copyWith => _$PitruMetaCopyWithImpl<PitruMeta>(this as PitruMeta, _$identity);

  /// Serializes this PitruMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PitruMeta&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,timezone,source);

@override
String toString() {
  return 'PitruMeta(latitude: $latitude, longitude: $longitude, timezone: $timezone, source: $source)';
}


}

/// @nodoc
abstract mixin class $PitruMetaCopyWith<$Res>  {
  factory $PitruMetaCopyWith(PitruMeta value, $Res Function(PitruMeta) _then) = _$PitruMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'latitude') double latitude,@JsonKey(name: 'longitude') double longitude,@JsonKey(name: 'timezone') String timezone,@JsonKey(name: 'source') String source
});




}
/// @nodoc
class _$PitruMetaCopyWithImpl<$Res>
    implements $PitruMetaCopyWith<$Res> {
  _$PitruMetaCopyWithImpl(this._self, this._then);

  final PitruMeta _self;
  final $Res Function(PitruMeta) _then;

/// Create a copy of PitruMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? timezone = null,Object? source = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PitruMeta].
extension PitruMetaPatterns on PitruMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PitruMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PitruMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PitruMeta value)  $default,){
final _that = this;
switch (_that) {
case _PitruMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PitruMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PitruMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'timezone')  String timezone, @JsonKey(name: 'source')  String source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PitruMeta() when $default != null:
return $default(_that.latitude,_that.longitude,_that.timezone,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'timezone')  String timezone, @JsonKey(name: 'source')  String source)  $default,) {final _that = this;
switch (_that) {
case _PitruMeta():
return $default(_that.latitude,_that.longitude,_that.timezone,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'timezone')  String timezone, @JsonKey(name: 'source')  String source)?  $default,) {final _that = this;
switch (_that) {
case _PitruMeta() when $default != null:
return $default(_that.latitude,_that.longitude,_that.timezone,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PitruMeta implements PitruMeta {
  const _PitruMeta({@JsonKey(name: 'latitude') this.latitude = 0.0, @JsonKey(name: 'longitude') this.longitude = 0.0, @JsonKey(name: 'timezone') this.timezone = '', @JsonKey(name: 'source') this.source = ''});
  factory _PitruMeta.fromJson(Map<String, dynamic> json) => _$PitruMetaFromJson(json);

@override@JsonKey(name: 'latitude') final  double latitude;
@override@JsonKey(name: 'longitude') final  double longitude;
@override@JsonKey(name: 'timezone') final  String timezone;
@override@JsonKey(name: 'source') final  String source;

/// Create a copy of PitruMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PitruMetaCopyWith<_PitruMeta> get copyWith => __$PitruMetaCopyWithImpl<_PitruMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PitruMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PitruMeta&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,timezone,source);

@override
String toString() {
  return 'PitruMeta(latitude: $latitude, longitude: $longitude, timezone: $timezone, source: $source)';
}


}

/// @nodoc
abstract mixin class _$PitruMetaCopyWith<$Res> implements $PitruMetaCopyWith<$Res> {
  factory _$PitruMetaCopyWith(_PitruMeta value, $Res Function(_PitruMeta) _then) = __$PitruMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'latitude') double latitude,@JsonKey(name: 'longitude') double longitude,@JsonKey(name: 'timezone') String timezone,@JsonKey(name: 'source') String source
});




}
/// @nodoc
class __$PitruMetaCopyWithImpl<$Res>
    implements _$PitruMetaCopyWith<$Res> {
  __$PitruMetaCopyWithImpl(this._self, this._then);

  final _PitruMeta _self;
  final $Res Function(_PitruMeta) _then;

/// Create a copy of PitruMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? timezone = null,Object? source = null,}) {
  return _then(_PitruMeta(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
