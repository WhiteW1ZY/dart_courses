import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/navigation/app_router.dart';
import 'package:to_do_app/generated/l10n.dart';
import 'package:to_do_app/presentation/bloc/cubits/application_cubit.dart';
import 'package:to_do_app/presentation/bloc/state/application_state/application_state.dart';

class ToDoApp extends StatefulWidget {
  final _appRouter = GetIt.instance<AppRouter>();

  ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = widget._appRouter.createRouter();
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApplicationCubit>(
      create: (context) => getIt<ApplicationCubit>(),
      child: BlocBuilder<ApplicationCubit, ApplicationState>(
        builder: (context, state) {
          if (state.isLoading) {
            return MaterialApp(
              home: Scaffold(body: Center(child: CircularProgressIndicator())),
            );
          }

          return MaterialApp.router(
            key: const ValueKey('material_app'),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: state.selectedTheme,
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: _router,
          );
        },
      ),
    );
  }
}
