import 'package:flutter/material.dart';
import 'package:quiz_app/domain/auth_service/auth_service.dart';
import 'package:quiz_app/domain/database_service/database_service.dart';
import 'package:quiz_app/domain/quiz_service/quiz_service.dart';

class AppProvider extends InheritedWidget {
  final AuthService authService;
  final QuizService quizService;
  final DatabaseService databaseService;
  final void Function(String) snackBarDispatcher;

  const AppProvider({
    super.key,
    required this.authService,
    required this.quizService,
    required this.databaseService,
    required this.snackBarDispatcher,
    required super.child,
  });

  static AppProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
