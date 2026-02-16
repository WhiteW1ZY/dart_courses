// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApplicationState {

 ThemeData? get selectedTheme; bool get isLoading;
/// Create a copy of ApplicationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationStateCopyWith<ApplicationState> get copyWith => _$ApplicationStateCopyWithImpl<ApplicationState>(this as ApplicationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationState&&(identical(other.selectedTheme, selectedTheme) || other.selectedTheme == selectedTheme)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTheme,isLoading);

@override
String toString() {
  return 'ApplicationState(selectedTheme: $selectedTheme, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ApplicationStateCopyWith<$Res>  {
  factory $ApplicationStateCopyWith(ApplicationState value, $Res Function(ApplicationState) _then) = _$ApplicationStateCopyWithImpl;
@useResult
$Res call({
 ThemeData? selectedTheme, bool isLoading
});




}
/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._self, this._then);

  final ApplicationState _self;
  final $Res Function(ApplicationState) _then;

/// Create a copy of ApplicationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTheme = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
selectedTheme: freezed == selectedTheme ? _self.selectedTheme : selectedTheme // ignore: cast_nullable_to_non_nullable
as ThemeData?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicationState].
extension ApplicationStatePatterns on ApplicationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationState value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationState value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeData? selectedTheme,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationState() when $default != null:
return $default(_that.selectedTheme,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeData? selectedTheme,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _ApplicationState():
return $default(_that.selectedTheme,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeData? selectedTheme,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationState() when $default != null:
return $default(_that.selectedTheme,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ApplicationState implements ApplicationState {
  const _ApplicationState({this.selectedTheme, this.isLoading = true});
  

@override final  ThemeData? selectedTheme;
@override@JsonKey() final  bool isLoading;

/// Create a copy of ApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationStateCopyWith<_ApplicationState> get copyWith => __$ApplicationStateCopyWithImpl<_ApplicationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationState&&(identical(other.selectedTheme, selectedTheme) || other.selectedTheme == selectedTheme)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTheme,isLoading);

@override
String toString() {
  return 'ApplicationState(selectedTheme: $selectedTheme, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ApplicationStateCopyWith<$Res> implements $ApplicationStateCopyWith<$Res> {
  factory _$ApplicationStateCopyWith(_ApplicationState value, $Res Function(_ApplicationState) _then) = __$ApplicationStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeData? selectedTheme, bool isLoading
});




}
/// @nodoc
class __$ApplicationStateCopyWithImpl<$Res>
    implements _$ApplicationStateCopyWith<$Res> {
  __$ApplicationStateCopyWithImpl(this._self, this._then);

  final _ApplicationState _self;
  final $Res Function(_ApplicationState) _then;

/// Create a copy of ApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTheme = freezed,Object? isLoading = null,}) {
  return _then(_ApplicationState(
selectedTheme: freezed == selectedTheme ? _self.selectedTheme : selectedTheme // ignore: cast_nullable_to_non_nullable
as ThemeData?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
