// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 EmailValidator get emailValidator; PasswordValidator get passwordValidator; bool get isHidePassword; ProcessState get signUpState;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.emailValidator, emailValidator) || other.emailValidator == emailValidator)&&(identical(other.passwordValidator, passwordValidator) || other.passwordValidator == passwordValidator)&&(identical(other.isHidePassword, isHidePassword) || other.isHidePassword == isHidePassword)&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState));
}


@override
int get hashCode => Object.hash(runtimeType,emailValidator,passwordValidator,isHidePassword,signUpState);

@override
String toString() {
  return 'SignUpState(emailValidator: $emailValidator, passwordValidator: $passwordValidator, isHidePassword: $isHidePassword, signUpState: $signUpState)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator emailValidator, PasswordValidator passwordValidator, bool isHidePassword, ProcessState signUpState
});


$ProcessStateCopyWith<$Res> get signUpState;

}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailValidator = null,Object? passwordValidator = null,Object? isHidePassword = null,Object? signUpState = null,}) {
  return _then(_self.copyWith(
emailValidator: null == emailValidator ? _self.emailValidator : emailValidator // ignore: cast_nullable_to_non_nullable
as EmailValidator,passwordValidator: null == passwordValidator ? _self.passwordValidator : passwordValidator // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isHidePassword: null == isHidePassword ? _self.isHidePassword : isHidePassword // ignore: cast_nullable_to_non_nullable
as bool,signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signUpState {
  
  return $ProcessStateCopyWith<$Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signUpState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signUpState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signUpState)  $default,) {final _that = this;
switch (_that) {
case _SignUpState():
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signUpState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailValidator emailValidator,  PasswordValidator passwordValidator,  bool isHidePassword,  ProcessState signUpState)?  $default,) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.emailValidator,_that.passwordValidator,_that.isHidePassword,_that.signUpState);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpState implements SignUpState {
  const _SignUpState({this.emailValidator = const EmailValidator.pure(), this.passwordValidator = const PasswordValidator.pure(), this.isHidePassword = true, this.signUpState = const ProcessState.initial()});
  

@override@JsonKey() final  EmailValidator emailValidator;
@override@JsonKey() final  PasswordValidator passwordValidator;
@override@JsonKey() final  bool isHidePassword;
@override@JsonKey() final  ProcessState signUpState;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.emailValidator, emailValidator) || other.emailValidator == emailValidator)&&(identical(other.passwordValidator, passwordValidator) || other.passwordValidator == passwordValidator)&&(identical(other.isHidePassword, isHidePassword) || other.isHidePassword == isHidePassword)&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState));
}


@override
int get hashCode => Object.hash(runtimeType,emailValidator,passwordValidator,isHidePassword,signUpState);

@override
String toString() {
  return 'SignUpState(emailValidator: $emailValidator, passwordValidator: $passwordValidator, isHidePassword: $isHidePassword, signUpState: $signUpState)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator emailValidator, PasswordValidator passwordValidator, bool isHidePassword, ProcessState signUpState
});


@override $ProcessStateCopyWith<$Res> get signUpState;

}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailValidator = null,Object? passwordValidator = null,Object? isHidePassword = null,Object? signUpState = null,}) {
  return _then(_SignUpState(
emailValidator: null == emailValidator ? _self.emailValidator : emailValidator // ignore: cast_nullable_to_non_nullable
as EmailValidator,passwordValidator: null == passwordValidator ? _self.passwordValidator : passwordValidator // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isHidePassword: null == isHidePassword ? _self.isHidePassword : isHidePassword // ignore: cast_nullable_to_non_nullable
as bool,signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signUpState {
  
  return $ProcessStateCopyWith<$Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}
}

// dart format on
