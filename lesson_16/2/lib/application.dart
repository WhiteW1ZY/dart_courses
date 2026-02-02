import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/cubit/weather_cubit.dart';
import 'package:train/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WeatherCubit(),
      child: MaterialApp(home: const HomePage()),
    );
  }
}
