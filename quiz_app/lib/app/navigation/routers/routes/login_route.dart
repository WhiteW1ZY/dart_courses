import 'package:quiz_app/app/navigation/routers/abstract/app_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/register_route.dart';

class LoginRoute extends AppRoute {
  static const String _routeName = "login";
  static const String _routePath = "/login";

  final registerRoute = RegisterRoute(parentAbsolutePath: _routePath);

  LoginRoute() : super(name: _routeName, path: _routePath);
}
