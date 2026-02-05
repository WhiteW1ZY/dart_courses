import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:task_2/application.dart';
import 'package:task_2/provider/counter.dart';

final _store = Store<AppState>(
  appReducer,
  initialState: AppState.initialState(),
);
void main() {
  runApp(Application(store: _store));
}
