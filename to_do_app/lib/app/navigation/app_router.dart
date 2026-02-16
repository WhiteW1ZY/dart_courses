import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/navigation/router/app_routes.dart';
import 'package:to_do_app/domain/usecases/auth/authorization_usecase.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/add_todo_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/root_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/profile_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/todo_list_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/authorization/sign_in_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/authorization/sign_up_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/update_todo_cubit.dart';
import 'package:to_do_app/presentation/screens/todo/add_todo_screen.dart';
import 'package:to_do_app/presentation/screens/root_screen.dart';
import 'package:to_do_app/presentation/screens/profile_screen.dart';
import 'package:to_do_app/presentation/screens/todo/todo_list_screen.dart';
import 'package:to_do_app/presentation/screens/authorization/login_screen.dart';
import 'package:to_do_app/presentation/screens/authorization/registration_screen.dart';
import 'package:to_do_app/presentation/screens/todo/update_todo_screen.dart';

@injectable
class AppRouter {
  final AuthorizationUsecase _authorizationUsecase;
  final AppRoutes _appRoutes;

  const AppRouter(this._authorizationUsecase, this._appRoutes);

  GoRouter createRouter() {
    final rootNavigatorKey = GlobalKey<NavigatorState>();
    final shellNavigatorKey = GlobalKey<NavigatorState>();
    final router = GoRouter(
      navigatorKey: rootNavigatorKey,
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
          return _appRoutes.rootRoute.todoListRoute.routePath;
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

        ShellRoute(
          navigatorKey: shellNavigatorKey,
          builder: (context, state, child) => BlocProvider(
            create: (context) => getIt<RootCubit>(),
            child: RootScreen(child: child),
          ),
          routes: [
            GoRoute(
              name: _appRoutes.rootRoute.todoListRoute.routeName,
              path: _appRoutes.rootRoute.todoListRoute.routePath,
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<TodoListCubit>(),
                child: const TodoListScreen(),
              ),

              routes: [
                GoRoute(
                  name:
                      _appRoutes.rootRoute.todoListRoute.addTodoRoute.routeName,
                  path:
                      _appRoutes.rootRoute.todoListRoute.addTodoRoute.routePath,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => getIt<AddTodoCubit>(),
                    child: const AddTodoScreen(),
                  ),
                ),
                GoRoute(
                  name: _appRoutes
                      .rootRoute
                      .todoListRoute
                      .updateTodoRoute
                      .routeName,
                  path: _appRoutes
                      .rootRoute
                      .todoListRoute
                      .updateTodoRoute
                      .routePath,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) {
                    final todo = state.extra;

                    return BlocProvider(
                      create: (context) => getIt<UpdateTodoCubit>(param1: todo),
                      child: const UpdateTodoScreen(),
                    );
                  },
                ),
              ],
            ),

            GoRoute(
              name: _appRoutes.rootRoute.profileRoute.routeName,
              path: _appRoutes.rootRoute.profileRoute.routePath,

              builder: (context, state) => BlocProvider(
                create: (context) => getIt<ProfileCubit>(),
                child: const ProfileScreen(),
              ),
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
