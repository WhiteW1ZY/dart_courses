// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Wind {

 double get speed; int get deg; double get gust;
/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindCopyWith<Wind> get copyWith => _$WindCopyWithImpl<Wind>(this as Wind, _$identity);

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class $WindCopyWith<$Res>  {
  factory $WindCopyWith(Wind value, $Res Function(Wind) _then) = _$WindCopyWithImpl;
@useResult
$Res call({
 double speed, int deg, double gust
});




}
/// @nodoc
class _$WindCopyWithImpl<$Res>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._self, this._then);

  final Wind _self;
  final $Res Function(Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,Object? deg = null,Object? gust = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,deg: null == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int,gust: null == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Wind].
extension WindPatterns on Wind {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Wind value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Wind value)  $default,){
final _that = this;
switch (_that) {
case _Wind():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Wind value)?  $default,){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed,  int deg,  double gust)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed,  int deg,  double gust)  $default,) {final _that = this;
switch (_that) {
case _Wind():
return $default(_that.speed,_that.deg,_that.gust);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed,  int deg,  double gust)?  $default,) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Wind implements Wind {
  const _Wind({required this.speed, required this.deg, required this.gust});
  factory _Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

@override final  double speed;
@override final  int deg;
@override final  double gust;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindCopyWith<_Wind> get copyWith => __$WindCopyWithImpl<_Wind>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) _then) = __$WindCopyWithImpl;
@override @useResult
$Res call({
 double speed, int deg, double gust
});




}
/// @nodoc
class __$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(this._self, this._then);

  final _Wind _self;
  final $Res Function(_Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,Object? deg = null,Object? gust = null,}) {
  return _then(_Wind(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,deg: null == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int,gust: null == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
