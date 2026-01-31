import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';

class ResultQuizRoute extends NestedAppRoute {
  static const String _routeName = "result_quiz";
  static const String _routePath = "/result_quiz";

  const ResultQuizRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
