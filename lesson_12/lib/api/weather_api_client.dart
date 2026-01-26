import 'package:dio/dio.dart';
import 'package:lesson_12/models/weather_forecast/weather_forecast.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api_client.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5/')
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String? baseUrl}) = _WeatherApiClient;

  @GET("weather")
  Future<WeatherForecast> getWeatherForecast({
    @Query("lat") required double lat,
    @Query("lon") required double lon,
    @Query("appid") required String appid,
  });
}
