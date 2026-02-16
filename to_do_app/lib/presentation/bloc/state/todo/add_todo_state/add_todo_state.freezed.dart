// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTodoState {

 TodoNodeValidator get titleValidator; TodoNodeValidator get descriptionValidator; ProcessState get addTodoState;
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTodoStateCopyWith<AddTodoState> get copyWith => _$AddTodoStateCopyWithImpl<AddTodoState>(this as AddTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTodoState&&(identical(other.titleValidator, titleValidator) || other.titleValidator == titleValidator)&&(identical(other.descriptionValidator, descriptionValidator) || other.descriptionValidator == descriptionValidator)&&(identical(other.addTodoState, addTodoState) || other.addTodoState == addTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,titleValidator,descriptionValidator,addTodoState);

@override
String toString() {
  return 'AddTodoState(titleValidator: $titleValidator, descriptionValidator: $descriptionValidator, addTodoState: $addTodoState)';
}


}

/// @nodoc
abstract mixin class $AddTodoStateCopyWith<$Res>  {
  factory $AddTodoStateCopyWith(AddTodoState value, $Res Function(AddTodoState) _then) = _$AddTodoStateCopyWithImpl;
@useResult
$Res call({
 TodoNodeValidator titleValidator, TodoNodeValidator descriptionValidator, ProcessState addTodoState
});


$ProcessStateCopyWith<$Res> get addTodoState;

}
/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res>
    implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._self, this._then);

  final AddTodoState _self;
  final $Res Function(AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleValidator = null,Object? descriptionValidator = null,Object? addTodoState = null,}) {
  return _then(_self.copyWith(
titleValidator: null == titleValidator ? _self.titleValidator : titleValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,descriptionValidator: null == descriptionValidator ? _self.descriptionValidator : descriptionValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,addTodoState: null == addTodoState ? _self.addTodoState : addTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get addTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.addTodoState, (value) {
    return _then(_self.copyWith(addTodoState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddTodoState].
extension AddTodoStatePatterns on AddTodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddTodoState value)  $default,){
final _that = this;
switch (_that) {
case _AddTodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState addTodoState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
return $default(_that.titleValidator,_that.descriptionValidator,_that.addTodoState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState addTodoState)  $default,) {final _that = this;
switch (_that) {
case _AddTodoState():
return $default(_that.titleValidator,_that.descriptionValidator,_that.addTodoState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState addTodoState)?  $default,) {final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
return $default(_that.titleValidator,_that.descriptionValidator,_that.addTodoState);case _:
  return null;

}
}

}

/// @nodoc


class _AddTodoState implements AddTodoState {
  const _AddTodoState({this.titleValidator = const TodoNodeValidator.pure(), this.descriptionValidator = const TodoNodeValidator.pure(), this.addTodoState = const ProcessState.initial()});
  

@override@JsonKey() final  TodoNodeValidator titleValidator;
@override@JsonKey() final  TodoNodeValidator descriptionValidator;
@override@JsonKey() final  ProcessState addTodoState;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoStateCopyWith<_AddTodoState> get copyWith => __$AddTodoStateCopyWithImpl<_AddTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodoState&&(identical(other.titleValidator, titleValidator) || other.titleValidator == titleValidator)&&(identical(other.descriptionValidator, descriptionValidator) || other.descriptionValidator == descriptionValidator)&&(identical(other.addTodoState, addTodoState) || other.addTodoState == addTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,titleValidator,descriptionValidator,addTodoState);

@override
String toString() {
  return 'AddTodoState(titleValidator: $titleValidator, descriptionValidator: $descriptionValidator, addTodoState: $addTodoState)';
}


}

/// @nodoc
abstract mixin class _$AddTodoStateCopyWith<$Res> implements $AddTodoStateCopyWith<$Res> {
  factory _$AddTodoStateCopyWith(_AddTodoState value, $Res Function(_AddTodoState) _then) = __$AddTodoStateCopyWithImpl;
@override @useResult
$Res call({
 TodoNodeValidator titleValidator, TodoNodeValidator descriptionValidator, ProcessState addTodoState
});


@override $ProcessStateCopyWith<$Res> get addTodoState;

}
/// @nodoc
class __$AddTodoStateCopyWithImpl<$Res>
    implements _$AddTodoStateCopyWith<$Res> {
  __$AddTodoStateCopyWithImpl(this._self, this._then);

  final _AddTodoState _self;
  final $Res Function(_AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleValidator = null,Object? descriptionValidator = null,Object? addTodoState = null,}) {
  return _then(_AddTodoState(
titleValidator: null == titleValidator ? _self.titleValidator : titleValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,descriptionValidator: null == descriptionValidator ? _self.descriptionValidator : descriptionValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,addTodoState: null == addTodoState ? _self.addTodoState : addTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get addTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.addTodoState, (value) {
    return _then(_self.copyWith(addTodoState: value));
  });
}
}

// dart format on
