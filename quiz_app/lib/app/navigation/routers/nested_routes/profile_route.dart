import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';

class ProfileRoute extends NestedAppRoute {
  static const String _routeName = "profile";
  static const String _routePath = "/profile";

  const ProfileRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
