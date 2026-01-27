import 'package:flutter/material.dart';
import 'package:lesson_12/services/weather_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _weatherService = WeatherService();

  String responseText = "Тут мог быть Ваш прогноз погоды..";
  bool _isLoading = false;

  void _fetchWeather() async {
    if (_isLoading) {
      return;
    }
    setState(() {
      _isLoading = true;
      responseText = "Загрузка..";
    });
    String responseString;
    try {
      final response = await _weatherService.getWeatherForecast();
      responseString = "Ответ убил... ${response.toString()}";
    } catch (ex) {
      responseString = "Что-то пошло не так.. ${ex.toString()}";
    }
    setState(() {
      responseText = responseString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SizedBox(
              width: 300,
              child: Text(responseText, textAlign: .justify),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _fetchWeather();
              },
              child: const Text("Запросить прогноз"),
            ),
          ],
        ),
      ),
    );
  }
}
