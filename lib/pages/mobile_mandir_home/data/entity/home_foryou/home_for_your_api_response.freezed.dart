// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_for_your_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeForYouApiResponse {

 bool get success; int get count; List<HomeForYouItem> get data;
/// Create a copy of HomeForYouApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeForYouApiResponseCopyWith<HomeForYouApiResponse> get copyWith => _$HomeForYouApiResponseCopyWithImpl<HomeForYouApiResponse>(this as HomeForYouApiResponse, _$identity);

  /// Serializes this HomeForYouApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeForYouApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HomeForYouApiResponse(success: $success, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeForYouApiResponseCopyWith<$Res>  {
  factory $HomeForYouApiResponseCopyWith(HomeForYouApiResponse value, $Res Function(HomeForYouApiResponse) _then) = _$HomeForYouApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, int count, List<HomeForYouItem> data
});




}
/// @nodoc
class _$HomeForYouApiResponseCopyWithImpl<$Res>
    implements $HomeForYouApiResponseCopyWith<$Res> {
  _$HomeForYouApiResponseCopyWithImpl(this._self, this._then);

  final HomeForYouApiResponse _self;
  final $Res Function(HomeForYouApiResponse) _then;

/// Create a copy of HomeForYouApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HomeForYouItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeForYouApiResponse].
extension HomeForYouApiResponsePatterns on HomeForYouApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeForYouApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeForYouApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeForYouApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomeForYouApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeForYouApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomeForYouApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int count,  List<HomeForYouItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeForYouApiResponse() when $default != null:
return $default(_that.success,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int count,  List<HomeForYouItem> data)  $default,) {final _that = this;
switch (_that) {
case _HomeForYouApiResponse():
return $default(_that.success,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int count,  List<HomeForYouItem> data)?  $default,) {final _that = this;
switch (_that) {
case _HomeForYouApiResponse() when $default != null:
return $default(_that.success,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeForYouApiResponse implements HomeForYouApiResponse {
  const _HomeForYouApiResponse({this.success = false, this.count = 0, final  List<HomeForYouItem> data = const []}): _data = data;
  factory _HomeForYouApiResponse.fromJson(Map<String, dynamic> json) => _$HomeForYouApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  int count;
 final  List<HomeForYouItem> _data;
@override@JsonKey() List<HomeForYouItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of HomeForYouApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeForYouApiResponseCopyWith<_HomeForYouApiResponse> get copyWith => __$HomeForYouApiResponseCopyWithImpl<_HomeForYouApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeForYouApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeForYouApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'HomeForYouApiResponse(success: $success, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeForYouApiResponseCopyWith<$Res> implements $HomeForYouApiResponseCopyWith<$Res> {
  factory _$HomeForYouApiResponseCopyWith(_HomeForYouApiResponse value, $Res Function(_HomeForYouApiResponse) _then) = __$HomeForYouApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, int count, List<HomeForYouItem> data
});




}
/// @nodoc
class __$HomeForYouApiResponseCopyWithImpl<$Res>
    implements _$HomeForYouApiResponseCopyWith<$Res> {
  __$HomeForYouApiResponseCopyWithImpl(this._self, this._then);

  final _HomeForYouApiResponse _self;
  final $Res Function(_HomeForYouApiResponse) _then;

/// Create a copy of HomeForYouApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? count = null,Object? data = null,}) {
  return _then(_HomeForYouApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HomeForYouItem>,
  ));
}


}

/// @nodoc
mixin _$HomeForYouItem {

 String get contentType; String get contentId; String get addedAt; SantData? get santData; GodData? get godData; TempleData? get templeData; AartiModel? get mantraData; SevaData? get sevaData;
/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeForYouItemCopyWith<HomeForYouItem> get copyWith => _$HomeForYouItemCopyWithImpl<HomeForYouItem>(this as HomeForYouItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeForYouItem&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.santData, santData) || other.santData == santData)&&(identical(other.godData, godData) || other.godData == godData)&&(identical(other.templeData, templeData) || other.templeData == templeData)&&(identical(other.mantraData, mantraData) || other.mantraData == mantraData)&&(identical(other.sevaData, sevaData) || other.sevaData == sevaData));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,contentId,addedAt,santData,godData,templeData,mantraData,sevaData);

@override
String toString() {
  return 'HomeForYouItem(contentType: $contentType, contentId: $contentId, addedAt: $addedAt, santData: $santData, godData: $godData, templeData: $templeData, mantraData: $mantraData, sevaData: $sevaData)';
}


}

/// @nodoc
abstract mixin class $HomeForYouItemCopyWith<$Res>  {
  factory $HomeForYouItemCopyWith(HomeForYouItem value, $Res Function(HomeForYouItem) _then) = _$HomeForYouItemCopyWithImpl;
@useResult
$Res call({
 String contentType, String contentId, String addedAt, SantData? santData, GodData? godData, TempleData? templeData, AartiModel? mantraData, SevaData? sevaData
});


$SantDataCopyWith<$Res>? get santData;$GodDataCopyWith<$Res>? get godData;$TempleDataCopyWith<$Res>? get templeData;$AartiModelCopyWith<$Res>? get mantraData;$SevaDataCopyWith<$Res>? get sevaData;

}
/// @nodoc
class _$HomeForYouItemCopyWithImpl<$Res>
    implements $HomeForYouItemCopyWith<$Res> {
  _$HomeForYouItemCopyWithImpl(this._self, this._then);

  final HomeForYouItem _self;
  final $Res Function(HomeForYouItem) _then;

/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = null,Object? contentId = null,Object? addedAt = null,Object? santData = freezed,Object? godData = freezed,Object? templeData = freezed,Object? mantraData = freezed,Object? sevaData = freezed,}) {
  return _then(_self.copyWith(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String,santData: freezed == santData ? _self.santData : santData // ignore: cast_nullable_to_non_nullable
as SantData?,godData: freezed == godData ? _self.godData : godData // ignore: cast_nullable_to_non_nullable
as GodData?,templeData: freezed == templeData ? _self.templeData : templeData // ignore: cast_nullable_to_non_nullable
as TempleData?,mantraData: freezed == mantraData ? _self.mantraData : mantraData // ignore: cast_nullable_to_non_nullable
as AartiModel?,sevaData: freezed == sevaData ? _self.sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as SevaData?,
  ));
}
/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiModelCopyWith<$Res>? get mantraData {
    if (_self.mantraData == null) {
    return null;
  }

  return $AartiModelCopyWith<$Res>(_self.mantraData!, (value) {
    return _then(_self.copyWith(mantraData: value));
  });
}/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaDataCopyWith<$Res>? get sevaData {
    if (_self.sevaData == null) {
    return null;
  }

  return $SevaDataCopyWith<$Res>(_self.sevaData!, (value) {
    return _then(_self.copyWith(sevaData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeForYouItem].
extension HomeForYouItemPatterns on HomeForYouItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeForYouItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeForYouItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeForYouItem value)  $default,){
final _that = this;
switch (_that) {
case _HomeForYouItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeForYouItem value)?  $default,){
final _that = this;
switch (_that) {
case _HomeForYouItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String contentType,  String contentId,  String addedAt,  SantData? santData,  GodData? godData,  TempleData? templeData,  AartiModel? mantraData,  SevaData? sevaData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeForYouItem() when $default != null:
return $default(_that.contentType,_that.contentId,_that.addedAt,_that.santData,_that.godData,_that.templeData,_that.mantraData,_that.sevaData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String contentType,  String contentId,  String addedAt,  SantData? santData,  GodData? godData,  TempleData? templeData,  AartiModel? mantraData,  SevaData? sevaData)  $default,) {final _that = this;
switch (_that) {
case _HomeForYouItem():
return $default(_that.contentType,_that.contentId,_that.addedAt,_that.santData,_that.godData,_that.templeData,_that.mantraData,_that.sevaData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String contentType,  String contentId,  String addedAt,  SantData? santData,  GodData? godData,  TempleData? templeData,  AartiModel? mantraData,  SevaData? sevaData)?  $default,) {final _that = this;
switch (_that) {
case _HomeForYouItem() when $default != null:
return $default(_that.contentType,_that.contentId,_that.addedAt,_that.santData,_that.godData,_that.templeData,_that.mantraData,_that.sevaData);case _:
  return null;

}
}

}

/// @nodoc


class _HomeForYouItem extends HomeForYouItem {
  const _HomeForYouItem({this.contentType = '', this.contentId = '', this.addedAt = '', this.santData, this.godData, this.templeData, this.mantraData, this.sevaData}): super._();
  

@override@JsonKey() final  String contentType;
@override@JsonKey() final  String contentId;
@override@JsonKey() final  String addedAt;
@override final  SantData? santData;
@override final  GodData? godData;
@override final  TempleData? templeData;
@override final  AartiModel? mantraData;
@override final  SevaData? sevaData;

/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeForYouItemCopyWith<_HomeForYouItem> get copyWith => __$HomeForYouItemCopyWithImpl<_HomeForYouItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeForYouItem&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.santData, santData) || other.santData == santData)&&(identical(other.godData, godData) || other.godData == godData)&&(identical(other.templeData, templeData) || other.templeData == templeData)&&(identical(other.mantraData, mantraData) || other.mantraData == mantraData)&&(identical(other.sevaData, sevaData) || other.sevaData == sevaData));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,contentId,addedAt,santData,godData,templeData,mantraData,sevaData);

@override
String toString() {
  return 'HomeForYouItem(contentType: $contentType, contentId: $contentId, addedAt: $addedAt, santData: $santData, godData: $godData, templeData: $templeData, mantraData: $mantraData, sevaData: $sevaData)';
}


}

/// @nodoc
abstract mixin class _$HomeForYouItemCopyWith<$Res> implements $HomeForYouItemCopyWith<$Res> {
  factory _$HomeForYouItemCopyWith(_HomeForYouItem value, $Res Function(_HomeForYouItem) _then) = __$HomeForYouItemCopyWithImpl;
@override @useResult
$Res call({
 String contentType, String contentId, String addedAt, SantData? santData, GodData? godData, TempleData? templeData, AartiModel? mantraData, SevaData? sevaData
});


@override $SantDataCopyWith<$Res>? get santData;@override $GodDataCopyWith<$Res>? get godData;@override $TempleDataCopyWith<$Res>? get templeData;@override $AartiModelCopyWith<$Res>? get mantraData;@override $SevaDataCopyWith<$Res>? get sevaData;

}
/// @nodoc
class __$HomeForYouItemCopyWithImpl<$Res>
    implements _$HomeForYouItemCopyWith<$Res> {
  __$HomeForYouItemCopyWithImpl(this._self, this._then);

  final _HomeForYouItem _self;
  final $Res Function(_HomeForYouItem) _then;

/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = null,Object? contentId = null,Object? addedAt = null,Object? santData = freezed,Object? godData = freezed,Object? templeData = freezed,Object? mantraData = freezed,Object? sevaData = freezed,}) {
  return _then(_HomeForYouItem(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String,santData: freezed == santData ? _self.santData : santData // ignore: cast_nullable_to_non_nullable
as SantData?,godData: freezed == godData ? _self.godData : godData // ignore: cast_nullable_to_non_nullable
as GodData?,templeData: freezed == templeData ? _self.templeData : templeData // ignore: cast_nullable_to_non_nullable
as TempleData?,mantraData: freezed == mantraData ? _self.mantraData : mantraData // ignore: cast_nullable_to_non_nullable
as AartiModel?,sevaData: freezed == sevaData ? _self.sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as SevaData?,
  ));
}

/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
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
}/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiModelCopyWith<$Res>? get mantraData {
    if (_self.mantraData == null) {
    return null;
  }

  return $AartiModelCopyWith<$Res>(_self.mantraData!, (value) {
    return _then(_self.copyWith(mantraData: value));
  });
}/// Create a copy of HomeForYouItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaDataCopyWith<$Res>? get sevaData {
    if (_self.sevaData == null) {
    return null;
  }

  return $SevaDataCopyWith<$Res>(_self.sevaData!, (value) {
    return _then(_self.copyWith(sevaData: value));
  });
}
}


/// @nodoc
mixin _$SantData {

@JsonKey(name: '_id') String get id; String get name; String get image; String get thumbnailImage; String get about; bool get isAddedInWishlist;
/// Create a copy of SantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantDataCopyWith<SantData> get copyWith => _$SantDataCopyWithImpl<SantData>(this as SantData, _$identity);

  /// Serializes this SantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.about, about) || other.about == about)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,thumbnailImage,about,isAddedInWishlist);

@override
String toString() {
  return 'SantData(id: $id, name: $name, image: $image, thumbnailImage: $thumbnailImage, about: $about, isAddedInWishlist: $isAddedInWishlist)';
}


}

/// @nodoc
abstract mixin class $SantDataCopyWith<$Res>  {
  factory $SantDataCopyWith(SantData value, $Res Function(SantData) _then) = _$SantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String image, String thumbnailImage, String about, bool isAddedInWishlist
});




}
/// @nodoc
class _$SantDataCopyWithImpl<$Res>
    implements $SantDataCopyWith<$Res> {
  _$SantDataCopyWithImpl(this._self, this._then);

  final SantData _self;
  final $Res Function(SantData) _then;

/// Create a copy of SantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? thumbnailImage = null,Object? about = null,Object? isAddedInWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: null == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SantData].
extension SantDataPatterns on SantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SantData value)  $default,){
final _that = this;
switch (_that) {
case _SantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SantData value)?  $default,){
final _that = this;
switch (_that) {
case _SantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String image,  String thumbnailImage,  String about,  bool isAddedInWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SantData() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.thumbnailImage,_that.about,_that.isAddedInWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String image,  String thumbnailImage,  String about,  bool isAddedInWishlist)  $default,) {final _that = this;
switch (_that) {
case _SantData():
return $default(_that.id,_that.name,_that.image,_that.thumbnailImage,_that.about,_that.isAddedInWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String image,  String thumbnailImage,  String about,  bool isAddedInWishlist)?  $default,) {final _that = this;
switch (_that) {
case _SantData() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.thumbnailImage,_that.about,_that.isAddedInWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SantData implements SantData {
  const _SantData({@JsonKey(name: '_id') this.id = '', this.name = '', this.image = '', this.thumbnailImage = '', this.about = '', this.isAddedInWishlist = false});
  factory _SantData.fromJson(Map<String, dynamic> json) => _$SantDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String image;
@override@JsonKey() final  String thumbnailImage;
@override@JsonKey() final  String about;
@override@JsonKey() final  bool isAddedInWishlist;

/// Create a copy of SantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantDataCopyWith<_SantData> get copyWith => __$SantDataCopyWithImpl<_SantData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SantDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SantData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.about, about) || other.about == about)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,thumbnailImage,about,isAddedInWishlist);

@override
String toString() {
  return 'SantData(id: $id, name: $name, image: $image, thumbnailImage: $thumbnailImage, about: $about, isAddedInWishlist: $isAddedInWishlist)';
}


}

/// @nodoc
abstract mixin class _$SantDataCopyWith<$Res> implements $SantDataCopyWith<$Res> {
  factory _$SantDataCopyWith(_SantData value, $Res Function(_SantData) _then) = __$SantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String image, String thumbnailImage, String about, bool isAddedInWishlist
});




}
/// @nodoc
class __$SantDataCopyWithImpl<$Res>
    implements _$SantDataCopyWith<$Res> {
  __$SantDataCopyWithImpl(this._self, this._then);

  final _SantData _self;
  final $Res Function(_SantData) _then;

/// Create a copy of SantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? thumbnailImage = null,Object? about = null,Object? isAddedInWishlist = null,}) {
  return _then(_SantData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: null == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GodData {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get godName;@JsonKey(name: 'category') String get category;@JsonKey(name: 'isWishlist') bool get isWishlist;@JsonKey(name: 'location') String get location; String get thumbnail;
/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodDataCopyWith<GodData> get copyWith => _$GodDataCopyWithImpl<GodData>(this as GodData, _$identity);

  /// Serializes this GodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.category, category) || other.category == category)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.location, location) || other.location == location)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,category,isWishlist,location,thumbnail);

@override
String toString() {
  return 'GodData(id: $id, godName: $godName, category: $category, isWishlist: $isWishlist, location: $location, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $GodDataCopyWith<$Res>  {
  factory $GodDataCopyWith(GodData value, $Res Function(GodData) _then) = _$GodDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'category') String category,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'location') String location, String thumbnail
});




}
/// @nodoc
class _$GodDataCopyWithImpl<$Res>
    implements $GodDataCopyWith<$Res> {
  _$GodDataCopyWithImpl(this._self, this._then);

  final GodData _self;
  final $Res Function(GodData) _then;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? category = null,Object? isWishlist = null,Object? location = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GodData].
extension GodDataPatterns on GodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodData value)  $default,){
final _that = this;
switch (_that) {
case _GodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodData value)?  $default,){
final _that = this;
switch (_that) {
case _GodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'location')  String location,  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.godName,_that.category,_that.isWishlist,_that.location,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'location')  String location,  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _GodData():
return $default(_that.id,_that.godName,_that.category,_that.isWishlist,_that.location,_that.thumbnail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'isWishlist')  bool isWishlist, @JsonKey(name: 'location')  String location,  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _GodData() when $default != null:
return $default(_that.id,_that.godName,_that.category,_that.isWishlist,_that.location,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodData implements GodData {
  const _GodData({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.godName = '', @JsonKey(name: 'category') this.category = '', @JsonKey(name: 'isWishlist') this.isWishlist = false, @JsonKey(name: 'location') this.location = '', this.thumbnail = ''});
  factory _GodData.fromJson(Map<String, dynamic> json) => _$GodDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String godName;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey() final  String thumbnail;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodDataCopyWith<_GodData> get copyWith => __$GodDataCopyWithImpl<_GodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodData&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.category, category) || other.category == category)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist)&&(identical(other.location, location) || other.location == location)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,category,isWishlist,location,thumbnail);

@override
String toString() {
  return 'GodData(id: $id, godName: $godName, category: $category, isWishlist: $isWishlist, location: $location, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$GodDataCopyWith<$Res> implements $GodDataCopyWith<$Res> {
  factory _$GodDataCopyWith(_GodData value, $Res Function(_GodData) _then) = __$GodDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'category') String category,@JsonKey(name: 'isWishlist') bool isWishlist,@JsonKey(name: 'location') String location, String thumbnail
});




}
/// @nodoc
class __$GodDataCopyWithImpl<$Res>
    implements _$GodDataCopyWith<$Res> {
  __$GodDataCopyWithImpl(this._self, this._then);

  final _GodData _self;
  final $Res Function(_GodData) _then;

/// Create a copy of GodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? category = null,Object? isWishlist = null,Object? location = null,Object? thumbnail = null,}) {
  return _then(_GodData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TempleData {

@JsonKey(name: '_id') String get id; String get name; String get thumbnailUrl; String get slug; String get location; double? get lat; double? get lng;@JsonKey(name: 'isWishlist') bool get isWishlist;
/// Create a copy of TempleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleDataCopyWith<TempleData> get copyWith => _$TempleDataCopyWithImpl<TempleData>(this as TempleData, _$identity);

  /// Serializes this TempleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,thumbnailUrl,slug,location,lat,lng,isWishlist);

@override
String toString() {
  return 'TempleData(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, slug: $slug, location: $location, lat: $lat, lng: $lng, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $TempleDataCopyWith<$Res>  {
  factory $TempleDataCopyWith(TempleData value, $Res Function(TempleData) _then) = _$TempleDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String thumbnailUrl, String slug, String location, double? lat, double? lng,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class _$TempleDataCopyWithImpl<$Res>
    implements $TempleDataCopyWith<$Res> {
  _$TempleDataCopyWithImpl(this._self, this._then);

  final TempleData _self;
  final $Res Function(TempleData) _then;

/// Create a copy of TempleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? thumbnailUrl = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? isWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleData].
extension TempleDataPatterns on TempleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleData value)  $default,){
final _that = this;
switch (_that) {
case _TempleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleData value)?  $default,){
final _that = this;
switch (_that) {
case _TempleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String thumbnailUrl,  String slug,  String location,  double? lat,  double? lng, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleData() when $default != null:
return $default(_that.id,_that.name,_that.thumbnailUrl,_that.slug,_that.location,_that.lat,_that.lng,_that.isWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String thumbnailUrl,  String slug,  String location,  double? lat,  double? lng, @JsonKey(name: 'isWishlist')  bool isWishlist)  $default,) {final _that = this;
switch (_that) {
case _TempleData():
return $default(_that.id,_that.name,_that.thumbnailUrl,_that.slug,_that.location,_that.lat,_that.lng,_that.isWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String thumbnailUrl,  String slug,  String location,  double? lat,  double? lng, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,) {final _that = this;
switch (_that) {
case _TempleData() when $default != null:
return $default(_that.id,_that.name,_that.thumbnailUrl,_that.slug,_that.location,_that.lat,_that.lng,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleData implements TempleData {
  const _TempleData({@JsonKey(name: '_id') this.id = '', this.name = '', this.thumbnailUrl = '', this.slug = '', this.location = '', this.lat, this.lng, @JsonKey(name: 'isWishlist') this.isWishlist = false});
  factory _TempleData.fromJson(Map<String, dynamic> json) => _$TempleDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String thumbnailUrl;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String location;
@override final  double? lat;
@override final  double? lng;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;

/// Create a copy of TempleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleDataCopyWith<_TempleData> get copyWith => __$TempleDataCopyWithImpl<_TempleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,thumbnailUrl,slug,location,lat,lng,isWishlist);

@override
String toString() {
  return 'TempleData(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, slug: $slug, location: $location, lat: $lat, lng: $lng, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$TempleDataCopyWith<$Res> implements $TempleDataCopyWith<$Res> {
  factory _$TempleDataCopyWith(_TempleData value, $Res Function(_TempleData) _then) = __$TempleDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String thumbnailUrl, String slug, String location, double? lat, double? lng,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class __$TempleDataCopyWithImpl<$Res>
    implements _$TempleDataCopyWith<$Res> {
  __$TempleDataCopyWithImpl(this._self, this._then);

  final _TempleData _self;
  final $Res Function(_TempleData) _then;

/// Create a copy of TempleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? thumbnailUrl = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? isWishlist = null,}) {
  return _then(_TempleData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SevaData {

@JsonKey(name: '_id') String get id; String get sevaName; String get sevaSlug; String get thumbnailUrl; int get amount; String get formattedAmount; int get finalPaymentAmount; String get formattedFinalPayment; String get paymentStatus; String get status; String get statusLabel; String get donorName;
/// Create a copy of SevaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaDataCopyWith<SevaData> get copyWith => _$SevaDataCopyWithImpl<SevaData>(this as SevaData, _$identity);

  /// Serializes this SevaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaData&&(identical(other.id, id) || other.id == id)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.sevaSlug, sevaSlug) || other.sevaSlug == sevaSlug)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.finalPaymentAmount, finalPaymentAmount) || other.finalPaymentAmount == finalPaymentAmount)&&(identical(other.formattedFinalPayment, formattedFinalPayment) || other.formattedFinalPayment == formattedFinalPayment)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.donorName, donorName) || other.donorName == donorName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sevaName,sevaSlug,thumbnailUrl,amount,formattedAmount,finalPaymentAmount,formattedFinalPayment,paymentStatus,status,statusLabel,donorName);

@override
String toString() {
  return 'SevaData(id: $id, sevaName: $sevaName, sevaSlug: $sevaSlug, thumbnailUrl: $thumbnailUrl, amount: $amount, formattedAmount: $formattedAmount, finalPaymentAmount: $finalPaymentAmount, formattedFinalPayment: $formattedFinalPayment, paymentStatus: $paymentStatus, status: $status, statusLabel: $statusLabel, donorName: $donorName)';
}


}

/// @nodoc
abstract mixin class $SevaDataCopyWith<$Res>  {
  factory $SevaDataCopyWith(SevaData value, $Res Function(SevaData) _then) = _$SevaDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String sevaName, String sevaSlug, String thumbnailUrl, int amount, String formattedAmount, int finalPaymentAmount, String formattedFinalPayment, String paymentStatus, String status, String statusLabel, String donorName
});




}
/// @nodoc
class _$SevaDataCopyWithImpl<$Res>
    implements $SevaDataCopyWith<$Res> {
  _$SevaDataCopyWithImpl(this._self, this._then);

  final SevaData _self;
  final $Res Function(SevaData) _then;

/// Create a copy of SevaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sevaName = null,Object? sevaSlug = null,Object? thumbnailUrl = null,Object? amount = null,Object? formattedAmount = null,Object? finalPaymentAmount = null,Object? formattedFinalPayment = null,Object? paymentStatus = null,Object? status = null,Object? statusLabel = null,Object? donorName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,sevaSlug: null == sevaSlug ? _self.sevaSlug : sevaSlug // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,finalPaymentAmount: null == finalPaymentAmount ? _self.finalPaymentAmount : finalPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,formattedFinalPayment: null == formattedFinalPayment ? _self.formattedFinalPayment : formattedFinalPayment // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SevaData].
extension SevaDataPatterns on SevaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaData value)  $default,){
final _that = this;
switch (_that) {
case _SevaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaData value)?  $default,){
final _that = this;
switch (_that) {
case _SevaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String sevaName,  String sevaSlug,  String thumbnailUrl,  int amount,  String formattedAmount,  int finalPaymentAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel,  String donorName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaData() when $default != null:
return $default(_that.id,_that.sevaName,_that.sevaSlug,_that.thumbnailUrl,_that.amount,_that.formattedAmount,_that.finalPaymentAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel,_that.donorName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String sevaName,  String sevaSlug,  String thumbnailUrl,  int amount,  String formattedAmount,  int finalPaymentAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel,  String donorName)  $default,) {final _that = this;
switch (_that) {
case _SevaData():
return $default(_that.id,_that.sevaName,_that.sevaSlug,_that.thumbnailUrl,_that.amount,_that.formattedAmount,_that.finalPaymentAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel,_that.donorName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String sevaName,  String sevaSlug,  String thumbnailUrl,  int amount,  String formattedAmount,  int finalPaymentAmount,  String formattedFinalPayment,  String paymentStatus,  String status,  String statusLabel,  String donorName)?  $default,) {final _that = this;
switch (_that) {
case _SevaData() when $default != null:
return $default(_that.id,_that.sevaName,_that.sevaSlug,_that.thumbnailUrl,_that.amount,_that.formattedAmount,_that.finalPaymentAmount,_that.formattedFinalPayment,_that.paymentStatus,_that.status,_that.statusLabel,_that.donorName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SevaData implements SevaData {
  const _SevaData({@JsonKey(name: '_id') this.id = '', this.sevaName = '', this.sevaSlug = '', this.thumbnailUrl = '', this.amount = 0, this.formattedAmount = '', this.finalPaymentAmount = 0, this.formattedFinalPayment = '', this.paymentStatus = '', this.status = '', this.statusLabel = '', this.donorName = ''});
  factory _SevaData.fromJson(Map<String, dynamic> json) => _$SevaDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String sevaName;
@override@JsonKey() final  String sevaSlug;
@override@JsonKey() final  String thumbnailUrl;
@override@JsonKey() final  int amount;
@override@JsonKey() final  String formattedAmount;
@override@JsonKey() final  int finalPaymentAmount;
@override@JsonKey() final  String formattedFinalPayment;
@override@JsonKey() final  String paymentStatus;
@override@JsonKey() final  String status;
@override@JsonKey() final  String statusLabel;
@override@JsonKey() final  String donorName;

/// Create a copy of SevaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaDataCopyWith<_SevaData> get copyWith => __$SevaDataCopyWithImpl<_SevaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SevaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaData&&(identical(other.id, id) || other.id == id)&&(identical(other.sevaName, sevaName) || other.sevaName == sevaName)&&(identical(other.sevaSlug, sevaSlug) || other.sevaSlug == sevaSlug)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedAmount, formattedAmount) || other.formattedAmount == formattedAmount)&&(identical(other.finalPaymentAmount, finalPaymentAmount) || other.finalPaymentAmount == finalPaymentAmount)&&(identical(other.formattedFinalPayment, formattedFinalPayment) || other.formattedFinalPayment == formattedFinalPayment)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.donorName, donorName) || other.donorName == donorName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sevaName,sevaSlug,thumbnailUrl,amount,formattedAmount,finalPaymentAmount,formattedFinalPayment,paymentStatus,status,statusLabel,donorName);

@override
String toString() {
  return 'SevaData(id: $id, sevaName: $sevaName, sevaSlug: $sevaSlug, thumbnailUrl: $thumbnailUrl, amount: $amount, formattedAmount: $formattedAmount, finalPaymentAmount: $finalPaymentAmount, formattedFinalPayment: $formattedFinalPayment, paymentStatus: $paymentStatus, status: $status, statusLabel: $statusLabel, donorName: $donorName)';
}


}

/// @nodoc
abstract mixin class _$SevaDataCopyWith<$Res> implements $SevaDataCopyWith<$Res> {
  factory _$SevaDataCopyWith(_SevaData value, $Res Function(_SevaData) _then) = __$SevaDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String sevaName, String sevaSlug, String thumbnailUrl, int amount, String formattedAmount, int finalPaymentAmount, String formattedFinalPayment, String paymentStatus, String status, String statusLabel, String donorName
});




}
/// @nodoc
class __$SevaDataCopyWithImpl<$Res>
    implements _$SevaDataCopyWith<$Res> {
  __$SevaDataCopyWithImpl(this._self, this._then);

  final _SevaData _self;
  final $Res Function(_SevaData) _then;

/// Create a copy of SevaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sevaName = null,Object? sevaSlug = null,Object? thumbnailUrl = null,Object? amount = null,Object? formattedAmount = null,Object? finalPaymentAmount = null,Object? formattedFinalPayment = null,Object? paymentStatus = null,Object? status = null,Object? statusLabel = null,Object? donorName = null,}) {
  return _then(_SevaData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sevaName: null == sevaName ? _self.sevaName : sevaName // ignore: cast_nullable_to_non_nullable
as String,sevaSlug: null == sevaSlug ? _self.sevaSlug : sevaSlug // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formattedAmount: null == formattedAmount ? _self.formattedAmount : formattedAmount // ignore: cast_nullable_to_non_nullable
as String,finalPaymentAmount: null == finalPaymentAmount ? _self.finalPaymentAmount : finalPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,formattedFinalPayment: null == formattedFinalPayment ? _self.formattedFinalPayment : formattedFinalPayment // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,donorName: null == donorName ? _self.donorName : donorName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
