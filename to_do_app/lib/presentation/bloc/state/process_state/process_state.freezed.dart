// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState()';
}


}

/// @nodoc
class $ProcessStateCopyWith<$Res>  {
$ProcessStateCopyWith(ProcessState _, $Res Function(ProcessState) __);
}


/// Adds pattern-matching-related methods to [ProcessState].
extension ProcessStatePatterns on ProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProcessInitialState value)?  initial,TResult Function( ProcessLoadingState value)?  loading,TResult Function( ProcessSuccessState value)?  success,TResult Function( ProcessErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProcessInitialState() when initial != null:
return initial(_that);case ProcessLoadingState() when loading != null:
return loading(_that);case ProcessSuccessState() when success != null:
return success(_that);case ProcessErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProcessInitialState value)  initial,required TResult Function( ProcessLoadingState value)  loading,required TResult Function( ProcessSuccessState value)  success,required TResult Function( ProcessErrorState value)  error,}){
final _that = this;
switch (_that) {
case ProcessInitialState():
return initial(_that);case ProcessLoadingState():
return loading(_that);case ProcessSuccessState():
return success(_that);case ProcessErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProcessInitialState value)?  initial,TResult? Function( ProcessLoadingState value)?  loading,TResult? Function( ProcessSuccessState value)?  success,TResult? Function( ProcessErrorState value)?  error,}){
final _that = this;
switch (_that) {
case ProcessInitialState() when initial != null:
return initial(_that);case ProcessLoadingState() when loading != null:
return loading(_that);case ProcessSuccessState() when success != null:
return success(_that);case ProcessErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String description)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProcessInitialState() when initial != null:
return initial();case ProcessLoadingState() when loading != null:
return loading();case ProcessSuccessState() when success != null:
return success();case ProcessErrorState() when error != null:
return error(_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String description)  error,}) {final _that = this;
switch (_that) {
case ProcessInitialState():
return initial();case ProcessLoadingState():
return loading();case ProcessSuccessState():
return success();case ProcessErrorState():
return error(_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String description)?  error,}) {final _that = this;
switch (_that) {
case ProcessInitialState() when initial != null:
return initial();case ProcessLoadingState() when loading != null:
return loading();case ProcessSuccessState() when success != null:
return success();case ProcessErrorState() when error != null:
return error(_that.description);case _:
  return null;

}
}

}

/// @nodoc


class ProcessInitialState implements ProcessState {
  const ProcessInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.initial()';
}


}




/// @nodoc


class ProcessLoadingState implements ProcessState {
  const ProcessLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.loading()';
}


}




/// @nodoc


class ProcessSuccessState implements ProcessState {
  const ProcessSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.success()';
}


}




/// @nodoc


class ProcessErrorState implements ProcessState {
  const ProcessErrorState(this.description);
  

 final  String description;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessErrorStateCopyWith<ProcessErrorState> get copyWith => _$ProcessErrorStateCopyWithImpl<ProcessErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessErrorState&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'ProcessState.error(description: $description)';
}


}

/// @nodoc
abstract mixin class $ProcessErrorStateCopyWith<$Res> implements $ProcessStateCopyWith<$Res> {
  factory $ProcessErrorStateCopyWith(ProcessErrorState value, $Res Function(ProcessErrorState) _then) = _$ProcessErrorStateCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$ProcessErrorStateCopyWithImpl<$Res>
    implements $ProcessErrorStateCopyWith<$Res> {
  _$ProcessErrorStateCopyWithImpl(this._self, this._then);

  final ProcessErrorState _self;
  final $Res Function(ProcessErrorState) _then;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(ProcessErrorState(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
