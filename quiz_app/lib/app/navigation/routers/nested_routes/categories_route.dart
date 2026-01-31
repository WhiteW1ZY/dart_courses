import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/quiz_game_route.dart';

class CategoriesRoute extends NestedAppRoute {
  static const String _routeName = "categories";
  static const String _routePath = "/categories";

  late final quizGameRoute = QuizGameRoute(
    parentAbsolutePath: routeAbsolutePath,
  );

  CategoriesRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
