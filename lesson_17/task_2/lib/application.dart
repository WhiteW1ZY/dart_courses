import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:task_2/pages/home_page.dart';
import 'package:task_2/provider/counter.dart';

class Application extends StatelessWidget {
  final Store<AppState> store;
  const Application({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(home: const HomePage()),
    );
  }
}
