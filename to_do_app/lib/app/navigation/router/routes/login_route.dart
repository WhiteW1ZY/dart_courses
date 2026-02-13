import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/navigation/router/abstract/app_route.dart';
import 'package:to_do_app/app/navigation/router/nested_routes/registration_route.dart';

@injectable
class LoginRoute extends AppRoute {
  static const String _routeName = "login";
  static const String _routePath = "/login";

  final registrationRoute = RegistrationRoute(parentAbsolutePath: _routePath);

  LoginRoute() : super(routeName: _routeName, routePath: _routePath);
}
