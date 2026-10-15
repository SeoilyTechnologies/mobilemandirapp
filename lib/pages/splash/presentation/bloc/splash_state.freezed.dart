// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashInitial value)?  initial,TResult Function( SplashNavigateToHome value)?  navigateToHome,TResult Function( SplashNavigateToLogin value)?  navigateToLogin,TResult Function( SplashNavigatToDetail value)?  navigateToDetail,TResult Function( SplashNavigatToProgileUpdate value)?  navigateToProfileUpdate,TResult Function( SplashNavigatToOtpVerify value)?  navigateToOtpVerify,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashInitial() when initial != null:
return initial(_that);case SplashNavigateToHome() when navigateToHome != null:
return navigateToHome(_that);case SplashNavigateToLogin() when navigateToLogin != null:
return navigateToLogin(_that);case SplashNavigatToDetail() when navigateToDetail != null:
return navigateToDetail(_that);case SplashNavigatToProgileUpdate() when navigateToProfileUpdate != null:
return navigateToProfileUpdate(_that);case SplashNavigatToOtpVerify() when navigateToOtpVerify != null:
return navigateToOtpVerify(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashInitial value)  initial,required TResult Function( SplashNavigateToHome value)  navigateToHome,required TResult Function( SplashNavigateToLogin value)  navigateToLogin,required TResult Function( SplashNavigatToDetail value)  navigateToDetail,required TResult Function( SplashNavigatToProgileUpdate value)  navigateToProfileUpdate,required TResult Function( SplashNavigatToOtpVerify value)  navigateToOtpVerify,}){
final _that = this;
switch (_that) {
case SplashInitial():
return initial(_that);case SplashNavigateToHome():
return navigateToHome(_that);case SplashNavigateToLogin():
return navigateToLogin(_that);case SplashNavigatToDetail():
return navigateToDetail(_that);case SplashNavigatToProgileUpdate():
return navigateToProfileUpdate(_that);case SplashNavigatToOtpVerify():
return navigateToOtpVerify(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashInitial value)?  initial,TResult? Function( SplashNavigateToHome value)?  navigateToHome,TResult? Function( SplashNavigateToLogin value)?  navigateToLogin,TResult? Function( SplashNavigatToDetail value)?  navigateToDetail,TResult? Function( SplashNavigatToProgileUpdate value)?  navigateToProfileUpdate,TResult? Function( SplashNavigatToOtpVerify value)?  navigateToOtpVerify,}){
final _that = this;
switch (_that) {
case SplashInitial() when initial != null:
return initial(_that);case SplashNavigateToHome() when navigateToHome != null:
return navigateToHome(_that);case SplashNavigateToLogin() when navigateToLogin != null:
return navigateToLogin(_that);case SplashNavigatToDetail() when navigateToDetail != null:
return navigateToDetail(_that);case SplashNavigatToProgileUpdate() when navigateToProfileUpdate != null:
return navigateToProfileUpdate(_that);case SplashNavigatToOtpVerify() when navigateToOtpVerify != null:
return navigateToOtpVerify(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  navigateToHome,TResult Function()?  navigateToLogin,TResult Function()?  navigateToDetail,TResult Function()?  navigateToProfileUpdate,TResult Function()?  navigateToOtpVerify,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashInitial() when initial != null:
return initial();case SplashNavigateToHome() when navigateToHome != null:
return navigateToHome();case SplashNavigateToLogin() when navigateToLogin != null:
return navigateToLogin();case SplashNavigatToDetail() when navigateToDetail != null:
return navigateToDetail();case SplashNavigatToProgileUpdate() when navigateToProfileUpdate != null:
return navigateToProfileUpdate();case SplashNavigatToOtpVerify() when navigateToOtpVerify != null:
return navigateToOtpVerify();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  navigateToHome,required TResult Function()  navigateToLogin,required TResult Function()  navigateToDetail,required TResult Function()  navigateToProfileUpdate,required TResult Function()  navigateToOtpVerify,}) {final _that = this;
switch (_that) {
case SplashInitial():
return initial();case SplashNavigateToHome():
return navigateToHome();case SplashNavigateToLogin():
return navigateToLogin();case SplashNavigatToDetail():
return navigateToDetail();case SplashNavigatToProgileUpdate():
return navigateToProfileUpdate();case SplashNavigatToOtpVerify():
return navigateToOtpVerify();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  navigateToHome,TResult? Function()?  navigateToLogin,TResult? Function()?  navigateToDetail,TResult? Function()?  navigateToProfileUpdate,TResult? Function()?  navigateToOtpVerify,}) {final _that = this;
switch (_that) {
case SplashInitial() when initial != null:
return initial();case SplashNavigateToHome() when navigateToHome != null:
return navigateToHome();case SplashNavigateToLogin() when navigateToLogin != null:
return navigateToLogin();case SplashNavigatToDetail() when navigateToDetail != null:
return navigateToDetail();case SplashNavigatToProgileUpdate() when navigateToProfileUpdate != null:
return navigateToProfileUpdate();case SplashNavigatToOtpVerify() when navigateToOtpVerify != null:
return navigateToOtpVerify();case _:
  return null;

}
}

}

/// @nodoc


class SplashInitial implements SplashState {
  const SplashInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.initial()';
}


}




/// @nodoc


class SplashNavigateToHome implements SplashState {
  const SplashNavigateToHome();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNavigateToHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.navigateToHome()';
}


}




/// @nodoc


class SplashNavigateToLogin implements SplashState {
  const SplashNavigateToLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNavigateToLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.navigateToLogin()';
}


}




/// @nodoc


class SplashNavigatToDetail implements SplashState {
  const SplashNavigatToDetail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNavigatToDetail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.navigateToDetail()';
}


}




/// @nodoc


class SplashNavigatToProgileUpdate implements SplashState {
  const SplashNavigatToProgileUpdate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNavigatToProgileUpdate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.navigateToProfileUpdate()';
}


}




/// @nodoc


class SplashNavigatToOtpVerify implements SplashState {
  const SplashNavigatToOtpVerify();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNavigatToOtpVerify);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.navigateToOtpVerify()';
}


}




// dart format on
