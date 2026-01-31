import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';

class RegisterRoute extends NestedAppRoute {
  static const String _routeName = "register";
  static const String _routePath = "/register";

  const RegisterRoute({required String parentAbsolutePath})
    : super(
        routeName: _routeName,
        routePath: _routePath,
        routeAbsolutePath: parentAbsolutePath + _routePath,
      );
}
