import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/result_quiz_route.dart';

class QuizGameRoute extends NestedAppRoute {
  static const String _routeName = "quiz_game";
  static const String _routePath = "/quiz_game";

  late final resultQuizRoute = ResultQuizRoute(
    parentAbsolutePath: routeAbsolutePath,
  );

  QuizGameRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
