import 'package:to_do_app/app/navigation/router/abstract/app_route.dart';

class ProfileRoute extends AppRoute {
  static const _routeName = "profile";
  static const _routePath = "/profile";

  const ProfileRoute() : super(routeName: _routeName, routePath: _routePath);
}
