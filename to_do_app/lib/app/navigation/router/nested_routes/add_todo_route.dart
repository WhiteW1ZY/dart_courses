import 'package:to_do_app/app/navigation/router/abstract/nested_app_route.dart';

class AddTodoRoute extends NestedAppRoute {
  static const String _routeName = "addTodoRoute";
  static const String _routePath = "/addTodoRoute";

  AddTodoRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
