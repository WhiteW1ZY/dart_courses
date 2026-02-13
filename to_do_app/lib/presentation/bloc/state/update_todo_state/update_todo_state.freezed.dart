// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateTodoState {

 TodoNodeValidator get titleValidator; TodoNodeValidator get descriptionValidator; ProcessState get updateTodoState; bool get isCompleted;
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTodoStateCopyWith<UpdateTodoState> get copyWith => _$UpdateTodoStateCopyWithImpl<UpdateTodoState>(this as UpdateTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTodoState&&(identical(other.titleValidator, titleValidator) || other.titleValidator == titleValidator)&&(identical(other.descriptionValidator, descriptionValidator) || other.descriptionValidator == descriptionValidator)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,titleValidator,descriptionValidator,updateTodoState,isCompleted);

@override
String toString() {
  return 'UpdateTodoState(titleValidator: $titleValidator, descriptionValidator: $descriptionValidator, updateTodoState: $updateTodoState, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $UpdateTodoStateCopyWith<$Res>  {
  factory $UpdateTodoStateCopyWith(UpdateTodoState value, $Res Function(UpdateTodoState) _then) = _$UpdateTodoStateCopyWithImpl;
@useResult
$Res call({
 TodoNodeValidator titleValidator, TodoNodeValidator descriptionValidator, ProcessState updateTodoState, bool isCompleted
});


$ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class _$UpdateTodoStateCopyWithImpl<$Res>
    implements $UpdateTodoStateCopyWith<$Res> {
  _$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final UpdateTodoState _self;
  final $Res Function(UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleValidator = null,Object? descriptionValidator = null,Object? updateTodoState = null,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
titleValidator: null == titleValidator ? _self.titleValidator : titleValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,descriptionValidator: null == descriptionValidator ? _self.descriptionValidator : descriptionValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTodoState].
extension UpdateTodoStatePatterns on UpdateTodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTodoState value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState updateTodoState,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
return $default(_that.titleValidator,_that.descriptionValidator,_that.updateTodoState,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState updateTodoState,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _UpdateTodoState():
return $default(_that.titleValidator,_that.descriptionValidator,_that.updateTodoState,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TodoNodeValidator titleValidator,  TodoNodeValidator descriptionValidator,  ProcessState updateTodoState,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
return $default(_that.titleValidator,_that.descriptionValidator,_that.updateTodoState,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateTodoState implements UpdateTodoState {
  const _UpdateTodoState({this.titleValidator = const TodoNodeValidator.pure(), this.descriptionValidator = const TodoNodeValidator.pure(), this.updateTodoState = const ProcessState.initial(), this.isCompleted = false});
  

@override@JsonKey() final  TodoNodeValidator titleValidator;
@override@JsonKey() final  TodoNodeValidator descriptionValidator;
@override@JsonKey() final  ProcessState updateTodoState;
@override@JsonKey() final  bool isCompleted;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoStateCopyWith<_UpdateTodoState> get copyWith => __$UpdateTodoStateCopyWithImpl<_UpdateTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodoState&&(identical(other.titleValidator, titleValidator) || other.titleValidator == titleValidator)&&(identical(other.descriptionValidator, descriptionValidator) || other.descriptionValidator == descriptionValidator)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,titleValidator,descriptionValidator,updateTodoState,isCompleted);

@override
String toString() {
  return 'UpdateTodoState(titleValidator: $titleValidator, descriptionValidator: $descriptionValidator, updateTodoState: $updateTodoState, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoStateCopyWith<$Res> implements $UpdateTodoStateCopyWith<$Res> {
  factory _$UpdateTodoStateCopyWith(_UpdateTodoState value, $Res Function(_UpdateTodoState) _then) = __$UpdateTodoStateCopyWithImpl;
@override @useResult
$Res call({
 TodoNodeValidator titleValidator, TodoNodeValidator descriptionValidator, ProcessState updateTodoState, bool isCompleted
});


@override $ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class __$UpdateTodoStateCopyWithImpl<$Res>
    implements _$UpdateTodoStateCopyWith<$Res> {
  __$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final _UpdateTodoState _self;
  final $Res Function(_UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleValidator = null,Object? descriptionValidator = null,Object? updateTodoState = null,Object? isCompleted = null,}) {
  return _then(_UpdateTodoState(
titleValidator: null == titleValidator ? _self.titleValidator : titleValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,descriptionValidator: null == descriptionValidator ? _self.descriptionValidator : descriptionValidator // ignore: cast_nullable_to_non_nullable
as TodoNodeValidator,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}

// dart format on
