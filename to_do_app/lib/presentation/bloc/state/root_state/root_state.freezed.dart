// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RootState {

 int get selectedPageIndex;
/// Create a copy of RootState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RootStateCopyWith<RootState> get copyWith => _$RootStateCopyWithImpl<RootState>(this as RootState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RootState&&(identical(other.selectedPageIndex, selectedPageIndex) || other.selectedPageIndex == selectedPageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPageIndex);

@override
String toString() {
  return 'RootState(selectedPageIndex: $selectedPageIndex)';
}


}

/// @nodoc
abstract mixin class $RootStateCopyWith<$Res>  {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) _then) = _$RootStateCopyWithImpl;
@useResult
$Res call({
 int selectedPageIndex
});




}
/// @nodoc
class _$RootStateCopyWithImpl<$Res>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._self, this._then);

  final RootState _self;
  final $Res Function(RootState) _then;

/// Create a copy of RootState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedPageIndex = null,}) {
  return _then(_self.copyWith(
selectedPageIndex: null == selectedPageIndex ? _self.selectedPageIndex : selectedPageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RootState].
extension RootStatePatterns on RootState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RootState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RootState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RootState value)  $default,){
final _that = this;
switch (_that) {
case _RootState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RootState value)?  $default,){
final _that = this;
switch (_that) {
case _RootState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedPageIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RootState() when $default != null:
return $default(_that.selectedPageIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedPageIndex)  $default,) {final _that = this;
switch (_that) {
case _RootState():
return $default(_that.selectedPageIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedPageIndex)?  $default,) {final _that = this;
switch (_that) {
case _RootState() when $default != null:
return $default(_that.selectedPageIndex);case _:
  return null;

}
}

}

/// @nodoc


class _RootState implements RootState {
  const _RootState(this.selectedPageIndex);
  

@override final  int selectedPageIndex;

/// Create a copy of RootState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RootStateCopyWith<_RootState> get copyWith => __$RootStateCopyWithImpl<_RootState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RootState&&(identical(other.selectedPageIndex, selectedPageIndex) || other.selectedPageIndex == selectedPageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPageIndex);

@override
String toString() {
  return 'RootState(selectedPageIndex: $selectedPageIndex)';
}


}

/// @nodoc
abstract mixin class _$RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$RootStateCopyWith(_RootState value, $Res Function(_RootState) _then) = __$RootStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedPageIndex
});




}
/// @nodoc
class __$RootStateCopyWithImpl<$Res>
    implements _$RootStateCopyWith<$Res> {
  __$RootStateCopyWithImpl(this._self, this._then);

  final _RootState _self;
  final $Res Function(_RootState) _then;

/// Create a copy of RootState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedPageIndex = null,}) {
  return _then(_RootState(
null == selectedPageIndex ? _self.selectedPageIndex : selectedPageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
