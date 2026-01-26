import 'package:flutter/material.dart';
import 'package:lesson_12/services/weather_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final weatherService = WeatherService();

  String responseText = "Тут мог быть Ваш прогноз погоды..";

  void getHttp() async {
    String responseString;
    try {
      final response = await weatherService.getWeatherForecast();
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
              width: 600,
              child: Text(responseText, textAlign: .justify),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                getHttp();
              },
              child: const Text("Запросить прогноз"),
            ),
          ],
        ),
      ),
    );
  }
}
