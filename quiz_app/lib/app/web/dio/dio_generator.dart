import 'package:dio/dio.dart';

Dio createDio(String apiKey) {
  final options = BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    baseUrl: "https://quizapi.io/api/",
    queryParameters: {'apiKey': apiKey},
  );
  return Dio(options);
}
