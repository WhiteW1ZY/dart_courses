// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Main {

 double get temp; double get feels_like; double get temp_min; double get temp_max; int get pressure; int get humidity; int get sea_level; int get grnd_level;
/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCopyWith<Main> get copyWith => _$MainCopyWithImpl<Main>(this as Main, _$identity);

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feels_like, feels_like) || other.feels_like == feels_like)&&(identical(other.temp_min, temp_min) || other.temp_min == temp_min)&&(identical(other.temp_max, temp_max) || other.temp_max == temp_max)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.sea_level, sea_level) || other.sea_level == sea_level)&&(identical(other.grnd_level, grnd_level) || other.grnd_level == grnd_level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feels_like,temp_min,temp_max,pressure,humidity,sea_level,grnd_level);

@override
String toString() {
  return 'Main(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity, sea_level: $sea_level, grnd_level: $grnd_level)';
}


}

/// @nodoc
abstract mixin class $MainCopyWith<$Res>  {
  factory $MainCopyWith(Main value, $Res Function(Main) _then) = _$MainCopyWithImpl;
@useResult
$Res call({
 double temp, double feels_like, double temp_min, double temp_max, int pressure, int humidity, int sea_level, int grnd_level
});




}
/// @nodoc
class _$MainCopyWithImpl<$Res>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._self, this._then);

  final Main _self;
  final $Res Function(Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? feels_like = null,Object? temp_min = null,Object? temp_max = null,Object? pressure = null,Object? humidity = null,Object? sea_level = null,Object? grnd_level = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feels_like: null == feels_like ? _self.feels_like : feels_like // ignore: cast_nullable_to_non_nullable
as double,temp_min: null == temp_min ? _self.temp_min : temp_min // ignore: cast_nullable_to_non_nullable
as double,temp_max: null == temp_max ? _self.temp_max : temp_max // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,sea_level: null == sea_level ? _self.sea_level : sea_level // ignore: cast_nullable_to_non_nullable
as int,grnd_level: null == grnd_level ? _self.grnd_level : grnd_level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Main].
extension MainPatterns on Main {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Main value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Main() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Main value)  $default,){
final _that = this;
switch (_that) {
case _Main():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Main value)?  $default,){
final _that = this;
switch (_that) {
case _Main() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp,  double feels_like,  double temp_min,  double temp_max,  int pressure,  int humidity,  int sea_level,  int grnd_level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.temp,_that.feels_like,_that.temp_min,_that.temp_max,_that.pressure,_that.humidity,_that.sea_level,_that.grnd_level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp,  double feels_like,  double temp_min,  double temp_max,  int pressure,  int humidity,  int sea_level,  int grnd_level)  $default,) {final _that = this;
switch (_that) {
case _Main():
return $default(_that.temp,_that.feels_like,_that.temp_min,_that.temp_max,_that.pressure,_that.humidity,_that.sea_level,_that.grnd_level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp,  double feels_like,  double temp_min,  double temp_max,  int pressure,  int humidity,  int sea_level,  int grnd_level)?  $default,) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.temp,_that.feels_like,_that.temp_min,_that.temp_max,_that.pressure,_that.humidity,_that.sea_level,_that.grnd_level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Main implements Main {
  const _Main({required this.temp, required this.feels_like, required this.temp_min, required this.temp_max, required this.pressure, required this.humidity, required this.sea_level, required this.grnd_level});
  factory _Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

@override final  double temp;
@override final  double feels_like;
@override final  double temp_min;
@override final  double temp_max;
@override final  int pressure;
@override final  int humidity;
@override final  int sea_level;
@override final  int grnd_level;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCopyWith<_Main> get copyWith => __$MainCopyWithImpl<_Main>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feels_like, feels_like) || other.feels_like == feels_like)&&(identical(other.temp_min, temp_min) || other.temp_min == temp_min)&&(identical(other.temp_max, temp_max) || other.temp_max == temp_max)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.sea_level, sea_level) || other.sea_level == sea_level)&&(identical(other.grnd_level, grnd_level) || other.grnd_level == grnd_level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feels_like,temp_min,temp_max,pressure,humidity,sea_level,grnd_level);

@override
String toString() {
  return 'Main(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity, sea_level: $sea_level, grnd_level: $grnd_level)';
}


}

/// @nodoc
abstract mixin class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) _then) = __$MainCopyWithImpl;
@override @useResult
$Res call({
 double temp, double feels_like, double temp_min, double temp_max, int pressure, int humidity, int sea_level, int grnd_level
});




}
/// @nodoc
class __$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(this._self, this._then);

  final _Main _self;
  final $Res Function(_Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? feels_like = null,Object? temp_min = null,Object? temp_max = null,Object? pressure = null,Object? humidity = null,Object? sea_level = null,Object? grnd_level = null,}) {
  return _then(_Main(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feels_like: null == feels_like ? _self.feels_like : feels_like // ignore: cast_nullable_to_non_nullable
as double,temp_min: null == temp_min ? _self.temp_min : temp_min // ignore: cast_nullable_to_non_nullable
as double,temp_max: null == temp_max ? _self.temp_max : temp_max // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,sea_level: null == sea_level ? _self.sea_level : sea_level // ignore: cast_nullable_to_non_nullable
as int,grnd_level: null == grnd_level ? _self.grnd_level : grnd_level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
