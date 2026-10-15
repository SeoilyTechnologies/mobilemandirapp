// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BannerResponse {

 bool get success; String get lang; int get count; List<BannerItem> get data;
/// Create a copy of BannerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerResponseCopyWith<BannerResponse> get copyWith => _$BannerResponseCopyWithImpl<BannerResponse>(this as BannerResponse, _$identity);

  /// Serializes this BannerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BannerResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $BannerResponseCopyWith<$Res>  {
  factory $BannerResponseCopyWith(BannerResponse value, $Res Function(BannerResponse) _then) = _$BannerResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String lang, int count, List<BannerItem> data
});




}
/// @nodoc
class _$BannerResponseCopyWithImpl<$Res>
    implements $BannerResponseCopyWith<$Res> {
  _$BannerResponseCopyWithImpl(this._self, this._then);

  final BannerResponse _self;
  final $Res Function(BannerResponse) _then;

/// Create a copy of BannerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerResponse].
extension BannerResponsePatterns on BannerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerResponse value)  $default,){
final _that = this;
switch (_that) {
case _BannerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BannerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<BannerItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<BannerItem> data)  $default,) {final _that = this;
switch (_that) {
case _BannerResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String lang,  int count,  List<BannerItem> data)?  $default,) {final _that = this;
switch (_that) {
case _BannerResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerResponse implements BannerResponse {
  const _BannerResponse({this.success = false, this.lang = 'en', this.count = 0, final  List<BannerItem> data = const []}): _data = data;
  factory _BannerResponse.fromJson(Map<String, dynamic> json) => _$BannerResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String lang;
@override@JsonKey() final  int count;
 final  List<BannerItem> _data;
@override@JsonKey() List<BannerItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BannerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerResponseCopyWith<_BannerResponse> get copyWith => __$BannerResponseCopyWithImpl<_BannerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BannerResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BannerResponseCopyWith<$Res> implements $BannerResponseCopyWith<$Res> {
  factory _$BannerResponseCopyWith(_BannerResponse value, $Res Function(_BannerResponse) _then) = __$BannerResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String lang, int count, List<BannerItem> data
});




}
/// @nodoc
class __$BannerResponseCopyWithImpl<$Res>
    implements _$BannerResponseCopyWith<$Res> {
  __$BannerResponseCopyWithImpl(this._self, this._then);

  final _BannerResponse _self;
  final $Res Function(_BannerResponse) _then;

/// Create a copy of BannerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_BannerResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,
  ));
}


}


/// @nodoc
mixin _$PanchangBannerModel {

 bool get success; InputModel? get input; HeaderModel? get header; TithiModel? get tithi; String get vikramSamvat; String get samvatsara; String get hinduMonth;
/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanchangBannerModelCopyWith<PanchangBannerModel> get copyWith => _$PanchangBannerModelCopyWithImpl<PanchangBannerModel>(this as PanchangBannerModel, _$identity);

  /// Serializes this PanchangBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanchangBannerModel&&(identical(other.success, success) || other.success == success)&&(identical(other.input, input) || other.input == input)&&(identical(other.header, header) || other.header == header)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.vikramSamvat, vikramSamvat) || other.vikramSamvat == vikramSamvat)&&(identical(other.samvatsara, samvatsara) || other.samvatsara == samvatsara)&&(identical(other.hinduMonth, hinduMonth) || other.hinduMonth == hinduMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,input,header,tithi,vikramSamvat,samvatsara,hinduMonth);

@override
String toString() {
  return 'PanchangBannerModel(success: $success, input: $input, header: $header, tithi: $tithi, vikramSamvat: $vikramSamvat, samvatsara: $samvatsara, hinduMonth: $hinduMonth)';
}


}

/// @nodoc
abstract mixin class $PanchangBannerModelCopyWith<$Res>  {
  factory $PanchangBannerModelCopyWith(PanchangBannerModel value, $Res Function(PanchangBannerModel) _then) = _$PanchangBannerModelCopyWithImpl;
@useResult
$Res call({
 bool success, InputModel? input, HeaderModel? header, TithiModel? tithi, String vikramSamvat, String samvatsara, String hinduMonth
});


$InputModelCopyWith<$Res>? get input;$HeaderModelCopyWith<$Res>? get header;$TithiModelCopyWith<$Res>? get tithi;

}
/// @nodoc
class _$PanchangBannerModelCopyWithImpl<$Res>
    implements $PanchangBannerModelCopyWith<$Res> {
  _$PanchangBannerModelCopyWithImpl(this._self, this._then);

  final PanchangBannerModel _self;
  final $Res Function(PanchangBannerModel) _then;

/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? input = freezed,Object? header = freezed,Object? tithi = freezed,Object? vikramSamvat = null,Object? samvatsara = null,Object? hinduMonth = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as InputModel?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HeaderModel?,tithi: freezed == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as TithiModel?,vikramSamvat: null == vikramSamvat ? _self.vikramSamvat : vikramSamvat // ignore: cast_nullable_to_non_nullable
as String,samvatsara: null == samvatsara ? _self.samvatsara : samvatsara // ignore: cast_nullable_to_non_nullable
as String,hinduMonth: null == hinduMonth ? _self.hinduMonth : hinduMonth // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputModelCopyWith<$Res>? get input {
    if (_self.input == null) {
    return null;
  }

  return $InputModelCopyWith<$Res>(_self.input!, (value) {
    return _then(_self.copyWith(input: value));
  });
}/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderModelCopyWith<$Res>? get header {
    if (_self.header == null) {
    return null;
  }

  return $HeaderModelCopyWith<$Res>(_self.header!, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TithiModelCopyWith<$Res>? get tithi {
    if (_self.tithi == null) {
    return null;
  }

  return $TithiModelCopyWith<$Res>(_self.tithi!, (value) {
    return _then(_self.copyWith(tithi: value));
  });
}
}


/// Adds pattern-matching-related methods to [PanchangBannerModel].
extension PanchangBannerModelPatterns on PanchangBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PanchangBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PanchangBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PanchangBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _PanchangBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PanchangBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PanchangBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  InputModel? input,  HeaderModel? header,  TithiModel? tithi,  String vikramSamvat,  String samvatsara,  String hinduMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PanchangBannerModel() when $default != null:
return $default(_that.success,_that.input,_that.header,_that.tithi,_that.vikramSamvat,_that.samvatsara,_that.hinduMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  InputModel? input,  HeaderModel? header,  TithiModel? tithi,  String vikramSamvat,  String samvatsara,  String hinduMonth)  $default,) {final _that = this;
switch (_that) {
case _PanchangBannerModel():
return $default(_that.success,_that.input,_that.header,_that.tithi,_that.vikramSamvat,_that.samvatsara,_that.hinduMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  InputModel? input,  HeaderModel? header,  TithiModel? tithi,  String vikramSamvat,  String samvatsara,  String hinduMonth)?  $default,) {final _that = this;
switch (_that) {
case _PanchangBannerModel() when $default != null:
return $default(_that.success,_that.input,_that.header,_that.tithi,_that.vikramSamvat,_that.samvatsara,_that.hinduMonth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PanchangBannerModel implements PanchangBannerModel {
  const _PanchangBannerModel({this.success = false, this.input, this.header, this.tithi, this.vikramSamvat = '', this.samvatsara = '', this.hinduMonth = ''});
  factory _PanchangBannerModel.fromJson(Map<String, dynamic> json) => _$PanchangBannerModelFromJson(json);

@override@JsonKey() final  bool success;
@override final  InputModel? input;
@override final  HeaderModel? header;
@override final  TithiModel? tithi;
@override@JsonKey() final  String vikramSamvat;
@override@JsonKey() final  String samvatsara;
@override@JsonKey() final  String hinduMonth;

/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PanchangBannerModelCopyWith<_PanchangBannerModel> get copyWith => __$PanchangBannerModelCopyWithImpl<_PanchangBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PanchangBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PanchangBannerModel&&(identical(other.success, success) || other.success == success)&&(identical(other.input, input) || other.input == input)&&(identical(other.header, header) || other.header == header)&&(identical(other.tithi, tithi) || other.tithi == tithi)&&(identical(other.vikramSamvat, vikramSamvat) || other.vikramSamvat == vikramSamvat)&&(identical(other.samvatsara, samvatsara) || other.samvatsara == samvatsara)&&(identical(other.hinduMonth, hinduMonth) || other.hinduMonth == hinduMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,input,header,tithi,vikramSamvat,samvatsara,hinduMonth);

@override
String toString() {
  return 'PanchangBannerModel(success: $success, input: $input, header: $header, tithi: $tithi, vikramSamvat: $vikramSamvat, samvatsara: $samvatsara, hinduMonth: $hinduMonth)';
}


}

/// @nodoc
abstract mixin class _$PanchangBannerModelCopyWith<$Res> implements $PanchangBannerModelCopyWith<$Res> {
  factory _$PanchangBannerModelCopyWith(_PanchangBannerModel value, $Res Function(_PanchangBannerModel) _then) = __$PanchangBannerModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, InputModel? input, HeaderModel? header, TithiModel? tithi, String vikramSamvat, String samvatsara, String hinduMonth
});


@override $InputModelCopyWith<$Res>? get input;@override $HeaderModelCopyWith<$Res>? get header;@override $TithiModelCopyWith<$Res>? get tithi;

}
/// @nodoc
class __$PanchangBannerModelCopyWithImpl<$Res>
    implements _$PanchangBannerModelCopyWith<$Res> {
  __$PanchangBannerModelCopyWithImpl(this._self, this._then);

  final _PanchangBannerModel _self;
  final $Res Function(_PanchangBannerModel) _then;

/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? input = freezed,Object? header = freezed,Object? tithi = freezed,Object? vikramSamvat = null,Object? samvatsara = null,Object? hinduMonth = null,}) {
  return _then(_PanchangBannerModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as InputModel?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HeaderModel?,tithi: freezed == tithi ? _self.tithi : tithi // ignore: cast_nullable_to_non_nullable
as TithiModel?,vikramSamvat: null == vikramSamvat ? _self.vikramSamvat : vikramSamvat // ignore: cast_nullable_to_non_nullable
as String,samvatsara: null == samvatsara ? _self.samvatsara : samvatsara // ignore: cast_nullable_to_non_nullable
as String,hinduMonth: null == hinduMonth ? _self.hinduMonth : hinduMonth // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputModelCopyWith<$Res>? get input {
    if (_self.input == null) {
    return null;
  }

  return $InputModelCopyWith<$Res>(_self.input!, (value) {
    return _then(_self.copyWith(input: value));
  });
}/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderModelCopyWith<$Res>? get header {
    if (_self.header == null) {
    return null;
  }

  return $HeaderModelCopyWith<$Res>(_self.header!, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of PanchangBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TithiModelCopyWith<$Res>? get tithi {
    if (_self.tithi == null) {
    return null;
  }

  return $TithiModelCopyWith<$Res>(_self.tithi!, (value) {
    return _then(_self.copyWith(tithi: value));
  });
}
}


/// @nodoc
mixin _$InputModel {

 double get latitude; double get longitude; String get date; String get lang;
/// Create a copy of InputModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputModelCopyWith<InputModel> get copyWith => _$InputModelCopyWithImpl<InputModel>(this as InputModel, _$identity);

  /// Serializes this InputModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&(identical(other.lang, lang) || other.lang == lang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,date,lang);

@override
String toString() {
  return 'InputModel(latitude: $latitude, longitude: $longitude, date: $date, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $InputModelCopyWith<$Res>  {
  factory $InputModelCopyWith(InputModel value, $Res Function(InputModel) _then) = _$InputModelCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, String date, String lang
});




}
/// @nodoc
class _$InputModelCopyWithImpl<$Res>
    implements $InputModelCopyWith<$Res> {
  _$InputModelCopyWithImpl(this._self, this._then);

  final InputModel _self;
  final $Res Function(InputModel) _then;

/// Create a copy of InputModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? date = null,Object? lang = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InputModel].
extension InputModelPatterns on InputModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputModel value)  $default,){
final _that = this;
switch (_that) {
case _InputModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputModel value)?  $default,){
final _that = this;
switch (_that) {
case _InputModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String date,  String lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.date,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String date,  String lang)  $default,) {final _that = this;
switch (_that) {
case _InputModel():
return $default(_that.latitude,_that.longitude,_that.date,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  String date,  String lang)?  $default,) {final _that = this;
switch (_that) {
case _InputModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.date,_that.lang);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InputModel implements InputModel {
  const _InputModel({this.latitude = 0.0, this.longitude = 0.0, this.date = '', this.lang = 'en'});
  factory _InputModel.fromJson(Map<String, dynamic> json) => _$InputModelFromJson(json);

@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@JsonKey() final  String date;
@override@JsonKey() final  String lang;

/// Create a copy of InputModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputModelCopyWith<_InputModel> get copyWith => __$InputModelCopyWithImpl<_InputModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&(identical(other.lang, lang) || other.lang == lang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,date,lang);

@override
String toString() {
  return 'InputModel(latitude: $latitude, longitude: $longitude, date: $date, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$InputModelCopyWith<$Res> implements $InputModelCopyWith<$Res> {
  factory _$InputModelCopyWith(_InputModel value, $Res Function(_InputModel) _then) = __$InputModelCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, String date, String lang
});




}
/// @nodoc
class __$InputModelCopyWithImpl<$Res>
    implements _$InputModelCopyWith<$Res> {
  __$InputModelCopyWithImpl(this._self, this._then);

  final _InputModel _self;
  final $Res Function(_InputModel) _then;

/// Create a copy of InputModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? date = null,Object? lang = null,}) {
  return _then(_InputModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HeaderModel {

 String get locationLabel; String get dateDisplay; String get tithiLine; String get pakshaLine; String get samvatLine;
/// Create a copy of HeaderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderModelCopyWith<HeaderModel> get copyWith => _$HeaderModelCopyWithImpl<HeaderModel>(this as HeaderModel, _$identity);

  /// Serializes this HeaderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderModel&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.tithiLine, tithiLine) || other.tithiLine == tithiLine)&&(identical(other.pakshaLine, pakshaLine) || other.pakshaLine == pakshaLine)&&(identical(other.samvatLine, samvatLine) || other.samvatLine == samvatLine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationLabel,dateDisplay,tithiLine,pakshaLine,samvatLine);

@override
String toString() {
  return 'HeaderModel(locationLabel: $locationLabel, dateDisplay: $dateDisplay, tithiLine: $tithiLine, pakshaLine: $pakshaLine, samvatLine: $samvatLine)';
}


}

/// @nodoc
abstract mixin class $HeaderModelCopyWith<$Res>  {
  factory $HeaderModelCopyWith(HeaderModel value, $Res Function(HeaderModel) _then) = _$HeaderModelCopyWithImpl;
@useResult
$Res call({
 String locationLabel, String dateDisplay, String tithiLine, String pakshaLine, String samvatLine
});




}
/// @nodoc
class _$HeaderModelCopyWithImpl<$Res>
    implements $HeaderModelCopyWith<$Res> {
  _$HeaderModelCopyWithImpl(this._self, this._then);

  final HeaderModel _self;
  final $Res Function(HeaderModel) _then;

/// Create a copy of HeaderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationLabel = null,Object? dateDisplay = null,Object? tithiLine = null,Object? pakshaLine = null,Object? samvatLine = null,}) {
  return _then(_self.copyWith(
locationLabel: null == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,tithiLine: null == tithiLine ? _self.tithiLine : tithiLine // ignore: cast_nullable_to_non_nullable
as String,pakshaLine: null == pakshaLine ? _self.pakshaLine : pakshaLine // ignore: cast_nullable_to_non_nullable
as String,samvatLine: null == samvatLine ? _self.samvatLine : samvatLine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HeaderModel].
extension HeaderModelPatterns on HeaderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaderModel value)  $default,){
final _that = this;
switch (_that) {
case _HeaderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaderModel value)?  $default,){
final _that = this;
switch (_that) {
case _HeaderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String locationLabel,  String dateDisplay,  String tithiLine,  String pakshaLine,  String samvatLine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaderModel() when $default != null:
return $default(_that.locationLabel,_that.dateDisplay,_that.tithiLine,_that.pakshaLine,_that.samvatLine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String locationLabel,  String dateDisplay,  String tithiLine,  String pakshaLine,  String samvatLine)  $default,) {final _that = this;
switch (_that) {
case _HeaderModel():
return $default(_that.locationLabel,_that.dateDisplay,_that.tithiLine,_that.pakshaLine,_that.samvatLine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String locationLabel,  String dateDisplay,  String tithiLine,  String pakshaLine,  String samvatLine)?  $default,) {final _that = this;
switch (_that) {
case _HeaderModel() when $default != null:
return $default(_that.locationLabel,_that.dateDisplay,_that.tithiLine,_that.pakshaLine,_that.samvatLine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeaderModel implements HeaderModel {
  const _HeaderModel({this.locationLabel = '', this.dateDisplay = '', this.tithiLine = '', this.pakshaLine = '', this.samvatLine = ''});
  factory _HeaderModel.fromJson(Map<String, dynamic> json) => _$HeaderModelFromJson(json);

@override@JsonKey() final  String locationLabel;
@override@JsonKey() final  String dateDisplay;
@override@JsonKey() final  String tithiLine;
@override@JsonKey() final  String pakshaLine;
@override@JsonKey() final  String samvatLine;

/// Create a copy of HeaderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderModelCopyWith<_HeaderModel> get copyWith => __$HeaderModelCopyWithImpl<_HeaderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderModel&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.dateDisplay, dateDisplay) || other.dateDisplay == dateDisplay)&&(identical(other.tithiLine, tithiLine) || other.tithiLine == tithiLine)&&(identical(other.pakshaLine, pakshaLine) || other.pakshaLine == pakshaLine)&&(identical(other.samvatLine, samvatLine) || other.samvatLine == samvatLine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationLabel,dateDisplay,tithiLine,pakshaLine,samvatLine);

@override
String toString() {
  return 'HeaderModel(locationLabel: $locationLabel, dateDisplay: $dateDisplay, tithiLine: $tithiLine, pakshaLine: $pakshaLine, samvatLine: $samvatLine)';
}


}

/// @nodoc
abstract mixin class _$HeaderModelCopyWith<$Res> implements $HeaderModelCopyWith<$Res> {
  factory _$HeaderModelCopyWith(_HeaderModel value, $Res Function(_HeaderModel) _then) = __$HeaderModelCopyWithImpl;
@override @useResult
$Res call({
 String locationLabel, String dateDisplay, String tithiLine, String pakshaLine, String samvatLine
});




}
/// @nodoc
class __$HeaderModelCopyWithImpl<$Res>
    implements _$HeaderModelCopyWith<$Res> {
  __$HeaderModelCopyWithImpl(this._self, this._then);

  final _HeaderModel _self;
  final $Res Function(_HeaderModel) _then;

/// Create a copy of HeaderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationLabel = null,Object? dateDisplay = null,Object? tithiLine = null,Object? pakshaLine = null,Object? samvatLine = null,}) {
  return _then(_HeaderModel(
locationLabel: null == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String,dateDisplay: null == dateDisplay ? _self.dateDisplay : dateDisplay // ignore: cast_nullable_to_non_nullable
as String,tithiLine: null == tithiLine ? _self.tithiLine : tithiLine // ignore: cast_nullable_to_non_nullable
as String,pakshaLine: null == pakshaLine ? _self.pakshaLine : pakshaLine // ignore: cast_nullable_to_non_nullable
as String,samvatLine: null == samvatLine ? _self.samvatLine : samvatLine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TithiModel {

 int get number; String get name; String get paksha; String get display; String get upto;
/// Create a copy of TithiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TithiModelCopyWith<TithiModel> get copyWith => _$TithiModelCopyWithImpl<TithiModel>(this as TithiModel, _$identity);

  /// Serializes this TithiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TithiModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.display, display) || other.display == display)&&(identical(other.upto, upto) || other.upto == upto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,paksha,display,upto);

@override
String toString() {
  return 'TithiModel(number: $number, name: $name, paksha: $paksha, display: $display, upto: $upto)';
}


}

/// @nodoc
abstract mixin class $TithiModelCopyWith<$Res>  {
  factory $TithiModelCopyWith(TithiModel value, $Res Function(TithiModel) _then) = _$TithiModelCopyWithImpl;
@useResult
$Res call({
 int number, String name, String paksha, String display, String upto
});




}
/// @nodoc
class _$TithiModelCopyWithImpl<$Res>
    implements $TithiModelCopyWith<$Res> {
  _$TithiModelCopyWithImpl(this._self, this._then);

  final TithiModel _self;
  final $Res Function(TithiModel) _then;

/// Create a copy of TithiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? name = null,Object? paksha = null,Object? display = null,Object? upto = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,upto: null == upto ? _self.upto : upto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TithiModel].
extension TithiModelPatterns on TithiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TithiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TithiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TithiModel value)  $default,){
final _that = this;
switch (_that) {
case _TithiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TithiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TithiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String name,  String paksha,  String display,  String upto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TithiModel() when $default != null:
return $default(_that.number,_that.name,_that.paksha,_that.display,_that.upto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String name,  String paksha,  String display,  String upto)  $default,) {final _that = this;
switch (_that) {
case _TithiModel():
return $default(_that.number,_that.name,_that.paksha,_that.display,_that.upto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String name,  String paksha,  String display,  String upto)?  $default,) {final _that = this;
switch (_that) {
case _TithiModel() when $default != null:
return $default(_that.number,_that.name,_that.paksha,_that.display,_that.upto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TithiModel implements TithiModel {
  const _TithiModel({this.number = 0, this.name = '', this.paksha = '', this.display = '', this.upto = ''});
  factory _TithiModel.fromJson(Map<String, dynamic> json) => _$TithiModelFromJson(json);

@override@JsonKey() final  int number;
@override@JsonKey() final  String name;
@override@JsonKey() final  String paksha;
@override@JsonKey() final  String display;
@override@JsonKey() final  String upto;

/// Create a copy of TithiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TithiModelCopyWith<_TithiModel> get copyWith => __$TithiModelCopyWithImpl<_TithiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TithiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TithiModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.paksha, paksha) || other.paksha == paksha)&&(identical(other.display, display) || other.display == display)&&(identical(other.upto, upto) || other.upto == upto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,paksha,display,upto);

@override
String toString() {
  return 'TithiModel(number: $number, name: $name, paksha: $paksha, display: $display, upto: $upto)';
}


}

/// @nodoc
abstract mixin class _$TithiModelCopyWith<$Res> implements $TithiModelCopyWith<$Res> {
  factory _$TithiModelCopyWith(_TithiModel value, $Res Function(_TithiModel) _then) = __$TithiModelCopyWithImpl;
@override @useResult
$Res call({
 int number, String name, String paksha, String display, String upto
});




}
/// @nodoc
class __$TithiModelCopyWithImpl<$Res>
    implements _$TithiModelCopyWith<$Res> {
  __$TithiModelCopyWithImpl(this._self, this._then);

  final _TithiModel _self;
  final $Res Function(_TithiModel) _then;

/// Create a copy of TithiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? name = null,Object? paksha = null,Object? display = null,Object? upto = null,}) {
  return _then(_TithiModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,paksha: null == paksha ? _self.paksha : paksha // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,upto: null == upto ? _self.upto : upto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TodaySevaModel {

@JsonKey(name: 'vendorSeva') List<VendorSevaModel> get vendorSeva;
/// Create a copy of TodaySevaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodaySevaModelCopyWith<TodaySevaModel> get copyWith => _$TodaySevaModelCopyWithImpl<TodaySevaModel>(this as TodaySevaModel, _$identity);

  /// Serializes this TodaySevaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodaySevaModel&&const DeepCollectionEquality().equals(other.vendorSeva, vendorSeva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vendorSeva));

@override
String toString() {
  return 'TodaySevaModel(vendorSeva: $vendorSeva)';
}


}

/// @nodoc
abstract mixin class $TodaySevaModelCopyWith<$Res>  {
  factory $TodaySevaModelCopyWith(TodaySevaModel value, $Res Function(TodaySevaModel) _then) = _$TodaySevaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'vendorSeva') List<VendorSevaModel> vendorSeva
});




}
/// @nodoc
class _$TodaySevaModelCopyWithImpl<$Res>
    implements $TodaySevaModelCopyWith<$Res> {
  _$TodaySevaModelCopyWithImpl(this._self, this._then);

  final TodaySevaModel _self;
  final $Res Function(TodaySevaModel) _then;

/// Create a copy of TodaySevaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vendorSeva = null,}) {
  return _then(_self.copyWith(
vendorSeva: null == vendorSeva ? _self.vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSevaModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TodaySevaModel].
extension TodaySevaModelPatterns on TodaySevaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodaySevaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodaySevaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodaySevaModel value)  $default,){
final _that = this;
switch (_that) {
case _TodaySevaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodaySevaModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodaySevaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'vendorSeva')  List<VendorSevaModel> vendorSeva)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodaySevaModel() when $default != null:
return $default(_that.vendorSeva);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'vendorSeva')  List<VendorSevaModel> vendorSeva)  $default,) {final _that = this;
switch (_that) {
case _TodaySevaModel():
return $default(_that.vendorSeva);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'vendorSeva')  List<VendorSevaModel> vendorSeva)?  $default,) {final _that = this;
switch (_that) {
case _TodaySevaModel() when $default != null:
return $default(_that.vendorSeva);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodaySevaModel implements TodaySevaModel {
  const _TodaySevaModel({@JsonKey(name: 'vendorSeva') final  List<VendorSevaModel> vendorSeva = const []}): _vendorSeva = vendorSeva;
  factory _TodaySevaModel.fromJson(Map<String, dynamic> json) => _$TodaySevaModelFromJson(json);

 final  List<VendorSevaModel> _vendorSeva;
@override@JsonKey(name: 'vendorSeva') List<VendorSevaModel> get vendorSeva {
  if (_vendorSeva is EqualUnmodifiableListView) return _vendorSeva;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vendorSeva);
}


/// Create a copy of TodaySevaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodaySevaModelCopyWith<_TodaySevaModel> get copyWith => __$TodaySevaModelCopyWithImpl<_TodaySevaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodaySevaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodaySevaModel&&const DeepCollectionEquality().equals(other._vendorSeva, _vendorSeva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vendorSeva));

@override
String toString() {
  return 'TodaySevaModel(vendorSeva: $vendorSeva)';
}


}

/// @nodoc
abstract mixin class _$TodaySevaModelCopyWith<$Res> implements $TodaySevaModelCopyWith<$Res> {
  factory _$TodaySevaModelCopyWith(_TodaySevaModel value, $Res Function(_TodaySevaModel) _then) = __$TodaySevaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'vendorSeva') List<VendorSevaModel> vendorSeva
});




}
/// @nodoc
class __$TodaySevaModelCopyWithImpl<$Res>
    implements _$TodaySevaModelCopyWith<$Res> {
  __$TodaySevaModelCopyWithImpl(this._self, this._then);

  final _TodaySevaModel _self;
  final $Res Function(_TodaySevaModel) _then;

/// Create a copy of TodaySevaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vendorSeva = null,}) {
  return _then(_TodaySevaModel(
vendorSeva: null == vendorSeva ? _self._vendorSeva : vendorSeva // ignore: cast_nullable_to_non_nullable
as List<VendorSevaModel>,
  ));
}


}


/// @nodoc
mixin _$VendorSevaModel {

@JsonKey(name: '_id') String get id; String get slug; String get name; List<String> get lines; String get backgroundColor; String get backgroundColorEnd; String get iconUrl; String get iconType; int get order;
/// Create a copy of VendorSevaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorSevaModelCopyWith<VendorSevaModel> get copyWith => _$VendorSevaModelCopyWithImpl<VendorSevaModel>(this as VendorSevaModel, _$identity);

  /// Serializes this VendorSevaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorSevaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.iconType, iconType) || other.iconType == iconType)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,const DeepCollectionEquality().hash(lines),backgroundColor,backgroundColorEnd,iconUrl,iconType,order);

@override
String toString() {
  return 'VendorSevaModel(id: $id, slug: $slug, name: $name, lines: $lines, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, iconUrl: $iconUrl, iconType: $iconType, order: $order)';
}


}

/// @nodoc
abstract mixin class $VendorSevaModelCopyWith<$Res>  {
  factory $VendorSevaModelCopyWith(VendorSevaModel value, $Res Function(VendorSevaModel) _then) = _$VendorSevaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String slug, String name, List<String> lines, String backgroundColor, String backgroundColorEnd, String iconUrl, String iconType, int order
});




}
/// @nodoc
class _$VendorSevaModelCopyWithImpl<$Res>
    implements $VendorSevaModelCopyWith<$Res> {
  _$VendorSevaModelCopyWithImpl(this._self, this._then);

  final VendorSevaModel _self;
  final $Res Function(VendorSevaModel) _then;

/// Create a copy of VendorSevaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? lines = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? iconUrl = null,Object? iconType = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,iconType: null == iconType ? _self.iconType : iconType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorSevaModel].
extension VendorSevaModelPatterns on VendorSevaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorSevaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorSevaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorSevaModel value)  $default,){
final _that = this;
switch (_that) {
case _VendorSevaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorSevaModel value)?  $default,){
final _that = this;
switch (_that) {
case _VendorSevaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  List<String> lines,  String backgroundColor,  String backgroundColorEnd,  String iconUrl,  String iconType,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorSevaModel() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  List<String> lines,  String backgroundColor,  String backgroundColorEnd,  String iconUrl,  String iconType,  int order)  $default,) {final _that = this;
switch (_that) {
case _VendorSevaModel():
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  List<String> lines,  String backgroundColor,  String backgroundColorEnd,  String iconUrl,  String iconType,  int order)?  $default,) {final _that = this;
switch (_that) {
case _VendorSevaModel() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.lines,_that.backgroundColor,_that.backgroundColorEnd,_that.iconUrl,_that.iconType,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorSevaModel implements VendorSevaModel {
  const _VendorSevaModel({@JsonKey(name: '_id') this.id = '', this.slug = '', this.name = '', final  List<String> lines = const [], this.backgroundColor = '', this.backgroundColorEnd = '', this.iconUrl = '', this.iconType = '', this.order = 0}): _lines = lines;
  factory _VendorSevaModel.fromJson(Map<String, dynamic> json) => _$VendorSevaModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String name;
 final  List<String> _lines;
@override@JsonKey() List<String> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey() final  String backgroundColor;
@override@JsonKey() final  String backgroundColorEnd;
@override@JsonKey() final  String iconUrl;
@override@JsonKey() final  String iconType;
@override@JsonKey() final  int order;

/// Create a copy of VendorSevaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorSevaModelCopyWith<_VendorSevaModel> get copyWith => __$VendorSevaModelCopyWithImpl<_VendorSevaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorSevaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorSevaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.iconType, iconType) || other.iconType == iconType)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,const DeepCollectionEquality().hash(_lines),backgroundColor,backgroundColorEnd,iconUrl,iconType,order);

@override
String toString() {
  return 'VendorSevaModel(id: $id, slug: $slug, name: $name, lines: $lines, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, iconUrl: $iconUrl, iconType: $iconType, order: $order)';
}


}

/// @nodoc
abstract mixin class _$VendorSevaModelCopyWith<$Res> implements $VendorSevaModelCopyWith<$Res> {
  factory _$VendorSevaModelCopyWith(_VendorSevaModel value, $Res Function(_VendorSevaModel) _then) = __$VendorSevaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String slug, String name, List<String> lines, String backgroundColor, String backgroundColorEnd, String iconUrl, String iconType, int order
});




}
/// @nodoc
class __$VendorSevaModelCopyWithImpl<$Res>
    implements _$VendorSevaModelCopyWith<$Res> {
  __$VendorSevaModelCopyWithImpl(this._self, this._then);

  final _VendorSevaModel _self;
  final $Res Function(_VendorSevaModel) _then;

/// Create a copy of VendorSevaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? lines = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? iconUrl = null,Object? iconType = null,Object? order = null,}) {
  return _then(_VendorSevaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,iconType: null == iconType ? _self.iconType : iconType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BannerItem {

@JsonKey(name: '_id') String get id; String get title;@JsonKey(name: 'banner_image') String get bannerImage;/// content | panchang | seva
 String get bannerType;/// AARTI_CHALISA_MANTRA_DETAIL | PANCHANG | NONE
 String get actionType; String get buttonText; int get priority; bool get isActive;@JsonKey(name: 'data') Map<String, dynamic> get data; Map<String, dynamic> get panchangdata; Map<String, dynamic> get sevaData;
/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerItemCopyWith<BannerItem> get copyWith => _$BannerItemCopyWithImpl<BannerItem>(this as BannerItem, _$identity);

  /// Serializes this BannerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.panchangdata, panchangdata)&&const DeepCollectionEquality().equals(other.sevaData, sevaData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,bannerImage,bannerType,actionType,buttonText,priority,isActive,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(panchangdata),const DeepCollectionEquality().hash(sevaData));

@override
String toString() {
  return 'BannerItem(id: $id, title: $title, bannerImage: $bannerImage, bannerType: $bannerType, actionType: $actionType, buttonText: $buttonText, priority: $priority, isActive: $isActive, data: $data, panchangdata: $panchangdata, sevaData: $sevaData)';
}


}

/// @nodoc
abstract mixin class $BannerItemCopyWith<$Res>  {
  factory $BannerItemCopyWith(BannerItem value, $Res Function(BannerItem) _then) = _$BannerItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String title,@JsonKey(name: 'banner_image') String bannerImage, String bannerType, String actionType, String buttonText, int priority, bool isActive,@JsonKey(name: 'data') Map<String, dynamic> data, Map<String, dynamic> panchangdata, Map<String, dynamic> sevaData
});




}
/// @nodoc
class _$BannerItemCopyWithImpl<$Res>
    implements $BannerItemCopyWith<$Res> {
  _$BannerItemCopyWithImpl(this._self, this._then);

  final BannerItem _self;
  final $Res Function(BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? bannerImage = null,Object? bannerType = null,Object? actionType = null,Object? buttonText = null,Object? priority = null,Object? isActive = null,Object? data = null,Object? panchangdata = null,Object? sevaData = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,bannerImage: null == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,buttonText: null == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,panchangdata: null == panchangdata ? _self.panchangdata : panchangdata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,sevaData: null == sevaData ? _self.sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerItem].
extension BannerItemPatterns on BannerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerItem value)  $default,){
final _that = this;
switch (_that) {
case _BannerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerItem value)?  $default,){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String title, @JsonKey(name: 'banner_image')  String bannerImage,  String bannerType,  String actionType,  String buttonText,  int priority,  bool isActive, @JsonKey(name: 'data')  Map<String, dynamic> data,  Map<String, dynamic> panchangdata,  Map<String, dynamic> sevaData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.id,_that.title,_that.bannerImage,_that.bannerType,_that.actionType,_that.buttonText,_that.priority,_that.isActive,_that.data,_that.panchangdata,_that.sevaData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String title, @JsonKey(name: 'banner_image')  String bannerImage,  String bannerType,  String actionType,  String buttonText,  int priority,  bool isActive, @JsonKey(name: 'data')  Map<String, dynamic> data,  Map<String, dynamic> panchangdata,  Map<String, dynamic> sevaData)  $default,) {final _that = this;
switch (_that) {
case _BannerItem():
return $default(_that.id,_that.title,_that.bannerImage,_that.bannerType,_that.actionType,_that.buttonText,_that.priority,_that.isActive,_that.data,_that.panchangdata,_that.sevaData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String title, @JsonKey(name: 'banner_image')  String bannerImage,  String bannerType,  String actionType,  String buttonText,  int priority,  bool isActive, @JsonKey(name: 'data')  Map<String, dynamic> data,  Map<String, dynamic> panchangdata,  Map<String, dynamic> sevaData)?  $default,) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.id,_that.title,_that.bannerImage,_that.bannerType,_that.actionType,_that.buttonText,_that.priority,_that.isActive,_that.data,_that.panchangdata,_that.sevaData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerItem extends BannerItem {
  const _BannerItem({@JsonKey(name: '_id') this.id = '', this.title = '', @JsonKey(name: 'banner_image') this.bannerImage = '', this.bannerType = '', this.actionType = '', this.buttonText = '', this.priority = 0, this.isActive = false, @JsonKey(name: 'data') final  Map<String, dynamic> data = const {}, final  Map<String, dynamic> panchangdata = const {}, final  Map<String, dynamic> sevaData = const {}}): _data = data,_panchangdata = panchangdata,_sevaData = sevaData,super._();
  factory _BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'banner_image') final  String bannerImage;
/// content | panchang | seva
@override@JsonKey() final  String bannerType;
/// AARTI_CHALISA_MANTRA_DETAIL | PANCHANG | NONE
@override@JsonKey() final  String actionType;
@override@JsonKey() final  String buttonText;
@override@JsonKey() final  int priority;
@override@JsonKey() final  bool isActive;
 final  Map<String, dynamic> _data;
@override@JsonKey(name: 'data') Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

 final  Map<String, dynamic> _panchangdata;
@override@JsonKey() Map<String, dynamic> get panchangdata {
  if (_panchangdata is EqualUnmodifiableMapView) return _panchangdata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_panchangdata);
}

 final  Map<String, dynamic> _sevaData;
@override@JsonKey() Map<String, dynamic> get sevaData {
  if (_sevaData is EqualUnmodifiableMapView) return _sevaData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sevaData);
}


/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerItemCopyWith<_BannerItem> get copyWith => __$BannerItemCopyWithImpl<_BannerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._panchangdata, _panchangdata)&&const DeepCollectionEquality().equals(other._sevaData, _sevaData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,bannerImage,bannerType,actionType,buttonText,priority,isActive,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_panchangdata),const DeepCollectionEquality().hash(_sevaData));

@override
String toString() {
  return 'BannerItem(id: $id, title: $title, bannerImage: $bannerImage, bannerType: $bannerType, actionType: $actionType, buttonText: $buttonText, priority: $priority, isActive: $isActive, data: $data, panchangdata: $panchangdata, sevaData: $sevaData)';
}


}

/// @nodoc
abstract mixin class _$BannerItemCopyWith<$Res> implements $BannerItemCopyWith<$Res> {
  factory _$BannerItemCopyWith(_BannerItem value, $Res Function(_BannerItem) _then) = __$BannerItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String title,@JsonKey(name: 'banner_image') String bannerImage, String bannerType, String actionType, String buttonText, int priority, bool isActive,@JsonKey(name: 'data') Map<String, dynamic> data, Map<String, dynamic> panchangdata, Map<String, dynamic> sevaData
});




}
/// @nodoc
class __$BannerItemCopyWithImpl<$Res>
    implements _$BannerItemCopyWith<$Res> {
  __$BannerItemCopyWithImpl(this._self, this._then);

  final _BannerItem _self;
  final $Res Function(_BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? bannerImage = null,Object? bannerType = null,Object? actionType = null,Object? buttonText = null,Object? priority = null,Object? isActive = null,Object? data = null,Object? panchangdata = null,Object? sevaData = null,}) {
  return _then(_BannerItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,bannerImage: null == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,buttonText: null == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,panchangdata: null == panchangdata ? _self._panchangdata : panchangdata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,sevaData: null == sevaData ? _self._sevaData : sevaData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
