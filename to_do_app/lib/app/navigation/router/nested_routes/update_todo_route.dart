import 'package:to_do_app/app/navigation/router/abstract/nested_app_route.dart';

class UpdateTodoRoute extends NestedAppRoute {
  static const String _routeName = "updateTodoRoute";
  static const String _routePath = "/updateTodoRoute";

  UpdateTodoRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
