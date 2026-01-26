// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherForecast implements DiagnosticableTreeMixin {

 Coord get coord; List<Weather> get weather; String get base; Main get main; int get visibility; Wind get wind; int get dt; Sys get sys; int get timezone; int get id; String get name; int get cod;
/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherForecastCopyWith<WeatherForecast> get copyWith => _$WeatherForecastCopyWithImpl<WeatherForecast>(this as WeatherForecast, _$identity);

  /// Serializes this WeatherForecast to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherForecast'))
    ..add(DiagnosticsProperty('coord', coord))..add(DiagnosticsProperty('weather', weather))..add(DiagnosticsProperty('base', base))..add(DiagnosticsProperty('main', main))..add(DiagnosticsProperty('visibility', visibility))..add(DiagnosticsProperty('wind', wind))..add(DiagnosticsProperty('dt', dt))..add(DiagnosticsProperty('sys', sys))..add(DiagnosticsProperty('timezone', timezone))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cod', cod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherForecast&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(weather),base,main,visibility,wind,dt,sys,timezone,id,name,cod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherForecast(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class $WeatherForecastCopyWith<$Res>  {
  factory $WeatherForecastCopyWith(WeatherForecast value, $Res Function(WeatherForecast) _then) = _$WeatherForecastCopyWithImpl;
@useResult
$Res call({
 Coord coord, List<Weather> weather, String base, Main main, int visibility, Wind wind, int dt, Sys sys, int timezone, int id, String name, int cod
});


$CoordCopyWith<$Res> get coord;$MainCopyWith<$Res> get main;$WindCopyWith<$Res> get wind;$SysCopyWith<$Res> get sys;

}
/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._self, this._then);

  final WeatherForecast _self;
  final $Res Function(WeatherForecast) _then;

/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coord = null,Object? weather = null,Object? base = null,Object? main = null,Object? visibility = null,Object? wind = null,Object? dt = null,Object? sys = null,Object? timezone = null,Object? id = null,Object? name = null,Object? cod = null,}) {
  return _then(_self.copyWith(
coord: null == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coord,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,sys: null == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordCopyWith<$Res> get coord {
  
  return $CoordCopyWith<$Res>(_self.coord, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res> get wind {
  
  return $WindCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res> get sys {
  
  return $SysCopyWith<$Res>(_self.sys, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherForecast].
extension WeatherForecastPatterns on WeatherForecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherForecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherForecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherForecast value)  $default,){
final _that = this;
switch (_that) {
case _WeatherForecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherForecast value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherForecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Coord coord,  List<Weather> weather,  String base,  Main main,  int visibility,  Wind wind,  int dt,  Sys sys,  int timezone,  int id,  String name,  int cod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherForecast() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Coord coord,  List<Weather> weather,  String base,  Main main,  int visibility,  Wind wind,  int dt,  Sys sys,  int timezone,  int id,  String name,  int cod)  $default,) {final _that = this;
switch (_that) {
case _WeatherForecast():
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Coord coord,  List<Weather> weather,  String base,  Main main,  int visibility,  Wind wind,  int dt,  Sys sys,  int timezone,  int id,  String name,  int cod)?  $default,) {final _that = this;
switch (_that) {
case _WeatherForecast() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherForecast with DiagnosticableTreeMixin implements WeatherForecast {
  const _WeatherForecast({required this.coord, required final  List<Weather> weather, required this.base, required this.main, required this.visibility, required this.wind, required this.dt, required this.sys, required this.timezone, required this.id, required this.name, required this.cod}): _weather = weather;
  factory _WeatherForecast.fromJson(Map<String, dynamic> json) => _$WeatherForecastFromJson(json);

@override final  Coord coord;
 final  List<Weather> _weather;
@override List<Weather> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  String base;
@override final  Main main;
@override final  int visibility;
@override final  Wind wind;
@override final  int dt;
@override final  Sys sys;
@override final  int timezone;
@override final  int id;
@override final  String name;
@override final  int cod;

/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherForecastCopyWith<_WeatherForecast> get copyWith => __$WeatherForecastCopyWithImpl<_WeatherForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherForecastToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherForecast'))
    ..add(DiagnosticsProperty('coord', coord))..add(DiagnosticsProperty('weather', weather))..add(DiagnosticsProperty('base', base))..add(DiagnosticsProperty('main', main))..add(DiagnosticsProperty('visibility', visibility))..add(DiagnosticsProperty('wind', wind))..add(DiagnosticsProperty('dt', dt))..add(DiagnosticsProperty('sys', sys))..add(DiagnosticsProperty('timezone', timezone))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cod', cod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherForecast&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(_weather),base,main,visibility,wind,dt,sys,timezone,id,name,cod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherForecast(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class _$WeatherForecastCopyWith<$Res> implements $WeatherForecastCopyWith<$Res> {
  factory _$WeatherForecastCopyWith(_WeatherForecast value, $Res Function(_WeatherForecast) _then) = __$WeatherForecastCopyWithImpl;
@override @useResult
$Res call({
 Coord coord, List<Weather> weather, String base, Main main, int visibility, Wind wind, int dt, Sys sys, int timezone, int id, String name, int cod
});


@override $CoordCopyWith<$Res> get coord;@override $MainCopyWith<$Res> get main;@override $WindCopyWith<$Res> get wind;@override $SysCopyWith<$Res> get sys;

}
/// @nodoc
class __$WeatherForecastCopyWithImpl<$Res>
    implements _$WeatherForecastCopyWith<$Res> {
  __$WeatherForecastCopyWithImpl(this._self, this._then);

  final _WeatherForecast _self;
  final $Res Function(_WeatherForecast) _then;

/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coord = null,Object? weather = null,Object? base = null,Object? main = null,Object? visibility = null,Object? wind = null,Object? dt = null,Object? sys = null,Object? timezone = null,Object? id = null,Object? name = null,Object? cod = null,}) {
  return _then(_WeatherForecast(
coord: null == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coord,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,sys: null == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordCopyWith<$Res> get coord {
  
  return $CoordCopyWith<$Res>(_self.coord, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res> get wind {
  
  return $WindCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res> get sys {
  
  return $SysCopyWith<$Res>(_self.sys, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}

// dart format on
