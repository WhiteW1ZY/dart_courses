import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_12/models/coord/coord.dart';
import 'package:lesson_12/models/main/main.dart';
import 'package:lesson_12/models/sys/sys.dart';
import 'package:lesson_12/models/weather/weather.dart';
import 'package:lesson_12/models/wind/wind.dart';

part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

@freezed
abstract class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required Coord coord,
    required List<Weather> weather,
    required String base,
    required Main main,
    required int visibility,
    required Wind wind,
    required int dt,
    required Sys sys,
    required int timezone,
    required int id,
    required String name,
    required int cod,
  }) = _WeatherForecast;
  factory WeatherForecast.fromJson(Map<String, Object?> json) =>
      _$WeatherForecastFromJson(json);
}
