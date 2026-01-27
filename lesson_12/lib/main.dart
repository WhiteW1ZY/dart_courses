import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lesson_12/application.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const Application());
}
