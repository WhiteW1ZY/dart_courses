// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sys {

 String get country; int get sunrise; int get sunset;
/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SysCopyWith<Sys> get copyWith => _$SysCopyWithImpl<Sys>(this as Sys, _$identity);

  /// Serializes this Sys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sys&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $SysCopyWith<$Res>  {
  factory $SysCopyWith(Sys value, $Res Function(Sys) _then) = _$SysCopyWithImpl;
@useResult
$Res call({
 String country, int sunrise, int sunset
});




}
/// @nodoc
class _$SysCopyWithImpl<$Res>
    implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._self, this._then);

  final Sys _self;
  final $Res Function(Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_self.copyWith(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Sys].
extension SysPatterns on Sys {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sys value)  $default,){
final _that = this;
switch (_that) {
case _Sys():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sys value)?  $default,){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String country,  int sunrise,  int sunset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.country,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String country,  int sunrise,  int sunset)  $default,) {final _that = this;
switch (_that) {
case _Sys():
return $default(_that.country,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String country,  int sunrise,  int sunset)?  $default,) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.country,_that.sunrise,_that.sunset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sys implements Sys {
  const _Sys({required this.country, required this.sunrise, required this.sunset});
  factory _Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

@override final  String country;
@override final  int sunrise;
@override final  int sunset;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SysCopyWith<_Sys> get copyWith => __$SysCopyWithImpl<_Sys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sys&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$SysCopyWith(_Sys value, $Res Function(_Sys) _then) = __$SysCopyWithImpl;
@override @useResult
$Res call({
 String country, int sunrise, int sunset
});




}
/// @nodoc
class __$SysCopyWithImpl<$Res>
    implements _$SysCopyWith<$Res> {
  __$SysCopyWithImpl(this._self, this._then);

  final _Sys _self;
  final $Res Function(_Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_Sys(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
