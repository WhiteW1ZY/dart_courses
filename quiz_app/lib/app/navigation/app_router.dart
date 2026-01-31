import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/app_routes.dart';
import 'package:quiz_app/domain/auth_service/auth_service.dart';
import 'package:quiz_app/presentation/category_page.dart';
import 'package:quiz_app/presentation/home_page.dart';
import 'package:quiz_app/presentation/login_page.dart';
import 'package:quiz_app/presentation/profile_page.dart';
import 'package:quiz_app/presentation/quiz_game_page.dart';
import 'package:quiz_app/presentation/quiz_result_page.dart';
import 'package:quiz_app/presentation/records_page.dart';
import 'package:quiz_app/presentation/register_page.dart';

GoRouter createRouter({required AuthService authService}) {
  final appRoutes = AppRoutes();

  return GoRouter(
    initialLocation: appRoutes.login.path,
    refreshListenable: _GoRouterRefreshStream(authService.authStateChanged),
    redirect: (context, state) {
      final fullPath = state.uri.path;
      final isAuthenticated = authService.isAuthenticated;
      final isAuthPath = fullPath.startsWith(appRoutes.login.path);

      if (!isAuthPath && !isAuthenticated) {
        return appRoutes.login.path;
      } else if (isAuthPath && isAuthenticated) {
        return appRoutes.home.path;
      }
      return null;
    },
    routes: [
      GoRoute(
        name: appRoutes.login.name,
        path: appRoutes.login.path,
        builder: (context, state) {
          return LoginPage(router: appRoutes.login);
        },
        routes: [
          GoRoute(
            name: appRoutes.login.registerRoute.name,
            path: appRoutes.login.registerRoute.path,
            builder: (context, state) {
              return const RegisterPage();
            },
          ),
        ],
      ),

      GoRoute(
        name: appRoutes.home.name,
        path: appRoutes.home.path,
        builder: (context, state) {
          return HomePage(router: appRoutes.home);
        },
        routes: [
          GoRoute(
            name: appRoutes.home.profileRoute.name,
            path: appRoutes.home.profileRoute.path,
            builder: (context, state) {
              return const ProfilePage();
            },
          ),
          GoRoute(
            name: appRoutes.home.recordsRoute.name,
            path: appRoutes.home.recordsRoute.path,
            builder: (context, state) {
              return const RecordsPage();
            },
          ),
          GoRoute(
            name: appRoutes.home.categoriesRoute.name,
            path: appRoutes.home.categoriesRoute.path,
            builder: (context, state) {
              return CategoryPage(router: appRoutes.home.categoriesRoute);
            },
            routes: [
              GoRoute(
                name: appRoutes.home.categoriesRoute.quizGameRoute.name,
                path: appRoutes.home.categoriesRoute.quizGameRoute.path,
                builder: (context, state) {
                  final extra = state.extra as Map<String?, dynamic>;
                  final categoryName = extra['name'];
                  return QuizGamePage(
                    categoryName: categoryName,
                    router: appRoutes.home.categoriesRoute.quizGameRoute,
                  );
                },

                routes: [
                  GoRoute(
                    name: appRoutes
                        .home
                        .categoriesRoute
                        .quizGameRoute
                        .resultQuizRoute
                        .name,
                    path: appRoutes
                        .home
                        .categoriesRoute
                        .quizGameRoute
                        .resultQuizRoute
                        .path,
                    builder: (context, state) {
                      final extra = state.extra as Map<String?, dynamic>;
                      final quizResult = extra['result'];
                      return QuizResultPage(
                        quizResult: quizResult,
                        router: appRoutes.home,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class _GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  _GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
