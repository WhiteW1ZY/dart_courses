import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/cubit/cubit_state/weather_cubit_state.dart';
import 'package:train/repository/weather_repository.dart';

class WeatherCubit extends Cubit<WeatherCubitState> {
  final _weatherRepository = WeatherRepository();

  WeatherCubit() : super(WeatherCubitState(state: .shimmering, weather: null));

  void fetchWeatherByCity(String city) async {
    emit(WeatherCubitState(state: .loading, weather: null));

    final weather = await _weatherRepository.fetchWeatherByCity(city);

    if (weather == null) {
      emit(WeatherCubitState(weather: null, state: .error));
    } else {
      emit(WeatherCubitState(state: .hasData, weather: weather));
    }
  }
}
