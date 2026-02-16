// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInState {

 EmailValidator get emailValidator; PasswordValidator get passwordValidator; bool get isHidePassword; ProcessState get signInState;
/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateCopyWith<SignInState> get copyWith => _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState&&(identical(other.emailValidator, emailValidator) || other.emailValidator == emailValidator)&&(identical(other.passwordValidator, passwordValidator) || other.passwordValidator == passwordValidator)&&(identical(other.isHidePassword, isHidePassword) || other.isHidePassword == isHidePassword)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,emailValidator,passwordValidator,isHidePassword,signInState);

@override
String toString() {
  return 'SignInState(emailValidator: $emailValidator, passwordValidator: $passwordValidator, isHidePassword: $isHidePassword, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res>  {
  factory $SignInStateCopyWith(SignInState value, $Res Function(SignInState) _then) = _$SignInStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator emailValidator, PasswordValidator passwordValidator, bool isHidePassword, ProcessState signInState
});


$ProcessStateCopyWith<$Res> get signInState;

}
/// @nodoc
class _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailValidator = null,Object? passwordValidator = null,Object? isHidePassword = null,Object? signInState = null,}) {
  return _then(_self.copyWith(
emailValidator: null == emailValidator ? _self.emailValidator : emailValidator // ignore: cast_nullable_to_non_nullable
as EmailValidator,passwordValidator: null == passwordValidator ? _self.passwordValidator : passwordValidator // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isHidePassword: null == isHidePassword ? _self.isHidePassword : isHidePassword // ignore: cast_nullable_to_non_nullable
as bool,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signInState {
  
  return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns on SignInState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInState value)  $default,){
final _that = this;
switch (_that) {
case _SignInState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInState value)?  $default,){
final _that = this;
switch (_that) {
case _SignInState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signInState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInState() when $default != null:
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signInState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signInState)  $default,) {final _that = this;
switch (_that) {
case _SignInState():
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signInState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signInState)?  $default,) {final _that = this;
switch (_that) {
case _SignInState() when $default != null:
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signInState);case _:
  return null;

}
}

}

/// @nodoc


class _SignInState implements SignInState {
  const _SignInState({this.emailValidator = const EmailValidator.pure(), this.passwordValidator = const PasswordValidator.pure(), this.isHidePassword = true, this.signInState = const ProcessState.initial()});
  

@override@JsonKey() final  EmailValidator emailValidator;
@override@JsonKey() final  PasswordValidator passwordValidator;
@override@JsonKey() final  bool isHidePassword;
@override@JsonKey() final  ProcessState signInState;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInStateCopyWith<_SignInState> get copyWith => __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInState&&(identical(other.emailValidator, emailValidator) || other.emailValidator == emailValidator)&&(identical(other.passwordValidator, passwordValidator) || other.passwordValidator == passwordValidator)&&(identical(other.isHidePassword, isHidePassword) || other.isHidePassword == isHidePassword)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,emailValidator,passwordValidator,isHidePassword,signInState);

@override
String toString() {
  return 'SignInState(emailValidator: $emailValidator, passwordValidator: $passwordValidator, isHidePassword: $isHidePassword, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class _$SignInStateCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(_SignInState value, $Res Function(_SignInState) _then) = __$SignInStateCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator emailValidator, PasswordValidator passwordValidator, bool isHidePassword, ProcessState signInState
});


@override $ProcessStateCopyWith<$Res> get signInState;

}
/// @nodoc
class __$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(this._self, this._then);

  final _SignInState _self;
  final $Res Function(_SignInState) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailValidator = null,Object? passwordValidator = null,Object? isHidePassword = null,Object? signInState = null,}) {
  return _then(_SignInState(
emailValidator: null == emailValidator ? _self.emailValidator : emailValidator // ignore: cast_nullable_to_non_nullable
as EmailValidator,passwordValidator: null == passwordValidator ? _self.passwordValidator : passwordValidator // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isHidePassword: null == isHidePassword ? _self.isHidePassword : isHidePassword // ignore: cast_nullable_to_non_nullable
as bool,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signInState {
  
  return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}

// dart format on
