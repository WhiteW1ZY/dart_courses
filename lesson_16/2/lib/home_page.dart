import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/cubit/cubit_state/weather_cubit_state.dart';
import 'package:train/cubit/weather_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _cityController = TextEditingController();

  late String _prevCity = "";

  void _fetchWeather() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final city = _cityController.text;
    context.read<WeatherCubit>().fetchWeatherByCity(city);

    _prevCity = city;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherCubit, WeatherCubitState>(
      listener: (context, state) {
        if (state.state == .error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Что-то пошло не так.."),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const .all(32),
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .stretch,
              children: [
                const Text(
                  "Погода в городе",
                  style: TextStyle(fontWeight: .w500, fontSize: 26),
                  textAlign: .center,
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _cityController,
                    decoration: InputDecoration(labelText: "Город"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Название города не может быть пустым";
                      } else if (value == _prevCity) {
                        return "Необходимо выбрать другой город";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: _fetchWeather,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Запросить погоду",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                BlocBuilder<WeatherCubit, WeatherCubitState>(
                  builder: (context, state) {
                    final weatherState = state.state;
                    if ((weatherState == .shimmering) ||
                        (weatherState == .error)) {
                      return const SizedBox.shrink();
                    }
                    return Padding(
                      padding: const .only(top: 50),
                      child: Column(
                        children: [
                          Text(
                            "О погоде в городе ${_cityController.text}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 10),
                          ?switch (weatherState) {
                            .hasData => Text(
                              state.weather!.name,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 85, 82, 82),
                              ),
                            ),
                            .loading => Column(
                              children: [
                                const CircularProgressIndicator(
                                  color: Color.fromARGB(255, 85, 82, 82),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Загрузка..",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 85, 82, 82),
                                  ),
                                ),
                              ],
                            ),
                            _ => null,
                          },
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
