import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:to_do_app/app/navigation/app_router.dart';
import 'package:to_do_app/generated/l10n.dart';

class ToDoApp extends StatelessWidget {
  final _appRouter = GetIt.instance<AppRouter>();

  ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          surface: const Color.fromARGB(255, 36, 41, 53),
          primary: Colors.white,
          secondary: Colors.grey,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 36, 41, 53),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
        ),
        listTileTheme: ListTileThemeData(
          style: ListTileStyle.list,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: .circular(8),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white70,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 36, 41, 53),
        ),

        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.grey.shade700;
            }
            if (states.contains(WidgetState.selected)) {
              return Colors.deepPurple;
            }
            return Colors.transparent;
          }),
          checkColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.grey.shade400;
            }
            return Colors.white;
          }),
          side: BorderSide(color: Colors.grey.shade500, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      supportedLocales: S.delegate.supportedLocales,
      routerConfig: _appRouter.createRouter(),
    );
  }
}
