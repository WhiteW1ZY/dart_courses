import 'dart:math';

import 'package:train/enums/weather.dart';

class WeatherRepository {
  final rand = Random();
  final weatherList = Weather.values;

  Future<Weather?> fetchWeatherByCity(String city) async {
    await Future.delayed(const Duration(seconds: 1));
    final hasError = rand.nextBool();
    if (hasError) {
      return null;
    }
    final weather = weatherList[rand.nextInt(weatherList.length)];
    return weather;
  }
}
