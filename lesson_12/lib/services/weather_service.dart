import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lesson_12/api/weather_api_client.dart';
import 'package:lesson_12/models/weather_forecast/weather_forecast.dart';

class WeatherService {
  late Dio _dio;
  late WeatherApiClient _apiClient;
  late String _appId;

  static final WeatherService _instance = WeatherService._internal();
  WeatherService._internal() {
    _dio = Dio();
    _apiClient = WeatherApiClient(_dio);
    _appId = dotenv.env['APP_ID']!;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint("Отправляем запрос..");
          debugPrint("URL: ${options.uri}");
          debugPrint("Метод: ${options.method}");
          debugPrint("Заголовки: ${options.headers}");
          debugPrint("Данные: ${options.data}");
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          debugPrint("Получен ответ..");
          debugPrint("URL: ${response.requestOptions.uri}");
          debugPrint("Код ответа: ${response.statusCode}");
          debugPrint("Данные: ${response.data}");

          return handler.next(response);
        },
        onError: (DioException e, handler) {
          debugPrint("Ошибка: ${e.type} - ${e.message}");
          return handler.next(e);
        },
      ),
    );
  }
  factory WeatherService() {
    return _instance;
  }
  Future<WeatherForecast> getWeatherForecast() =>
      _apiClient.getWeatherForecast(lat: 53.89, lon: 27.56, appid: _appId);
}
