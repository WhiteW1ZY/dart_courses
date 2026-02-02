import 'package:train/enums/weather.dart';
import 'package:train/enums/weather_cubit_state_enum.dart';

class WeatherCubitState {
  final WeatherCubitStateEnum state;
  final Weather? weather;

  const WeatherCubitState({required this.state, required this.weather});
}
