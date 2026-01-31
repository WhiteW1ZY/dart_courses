import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/domain/auth_service/auth_service.dart';
import 'package:quiz_app/domain/database_service/database_service.dart';
import 'package:quiz_app/domain/quiz_service/quiz_service.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class QuizApp extends StatefulWidget {
  final GoRouter router;
  final AuthService authService;
  final QuizService quizService;
  final DatabaseService databaseService;
  const QuizApp({
    super.key,
    required this.router,
    required this.authService,
    required this.quizService,
    required this.databaseService,
  });

  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  void _showSnackBarMessage(String message) {
    final currentState = _scaffoldMessengerKey.currentState;
    if (currentState == null) {
      return;
    }
    final snackBar = SnackBar(content: Text(message));
    currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      authService: widget.authService,
      quizService: widget.quizService,
      databaseService: widget.databaseService,
      snackBarDispatcher: _showSnackBarMessage,
      child: MaterialApp.router(
        scaffoldMessengerKey: _scaffoldMessengerKey,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: widget.router,
      ),
    );
  }
}
