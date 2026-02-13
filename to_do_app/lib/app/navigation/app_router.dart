import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/navigation/router/app_routes.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/usecases/auth/authorization_usecase.dart';
import 'package:to_do_app/presentation/bloc/cubits/add_todo_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo_list_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/sign_in_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/sign_up_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/update_todo_cubit.dart';
import 'package:to_do_app/presentation/screens/add_todo_screen.dart';
import 'package:to_do_app/presentation/screens/todo_list_screen.dart';
import 'package:to_do_app/presentation/screens/login_screen.dart';
import 'package:to_do_app/presentation/screens/registration_screen.dart';
import 'package:to_do_app/presentation/screens/update_todo_screen.dart';

@injectable
class AppRouter {
  final AuthorizationUsecase _authorizationUsecase;
  final AppRoutes _appRoutes;

  const AppRouter(this._authorizationUsecase, this._appRoutes);

  GoRouter createRouter() {
    final router = GoRouter(
      initialLocation: _appRoutes.loginRoute.routePath,
      refreshListenable: _GoRouterRefreshStream(
        _authorizationUsecase.authStateChanged,
      ),
      redirect: (context, state) {
        final fullPath = state.uri.path;
        final isAuthenticated = _authorizationUsecase.isAuthenticated;
        final isAuthPath = fullPath.startsWith(_appRoutes.loginRoute.routePath);

        if (!isAuthPath && !isAuthenticated) {
          return _appRoutes.loginRoute.routePath;
        } else if (isAuthPath && isAuthenticated) {
          return _appRoutes.todoListRoute.routePath;
        }

        return null;
      },
      routes: [
        GoRoute(
          name: _appRoutes.loginRoute.routeName,
          path: _appRoutes.loginRoute.routePath,
          builder: (context, state) => BlocProvider(
            create: (context) => getIt<SignInCubit>(),
            child: const LoginScreen(),
          ),

          routes: [
            GoRoute(
              name: _appRoutes.loginRoute.registrationRoute.routeName,
              path: _appRoutes.loginRoute.registrationRoute.routePath,
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: const RegistrationScreen(),
              ),
            ),
          ],
        ),

        GoRoute(
          name: _appRoutes.todoListRoute.routeName,
          path: _appRoutes.todoListRoute.routePath,
          builder: (context, state) => BlocProvider(
            create: (context) => getIt<TodoListCubit>(),
            child: const TodoListScreen(),
          ),

          routes: [
            GoRoute(
              name: _appRoutes.todoListRoute.addTodoRoute.routeName,
              path: _appRoutes.todoListRoute.addTodoRoute.routePath,
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<AddTodoCubit>(),
                child: const AddTodoScreen(),
              ),
            ),
            GoRoute(
              name: _appRoutes.todoListRoute.updateTodoRoute.routeName,
              path: _appRoutes.todoListRoute.updateTodoRoute.routePath,
              builder: (context, state) {
                final todo = state.extra as TodoEntity;

                return BlocProvider(
                  create: (context) => getIt<UpdateTodoCubit>(param1: todo),
                  child: const UpdateTodoScreen(),
                );
              },
            ),
          ],
        ),
      ],
    );

    return router;
  }
}

class _GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<bool> _subscription;

  _GoRouterRefreshStream(Stream<bool> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
