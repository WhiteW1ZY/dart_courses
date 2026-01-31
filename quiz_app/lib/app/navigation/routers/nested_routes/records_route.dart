import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';

class RecordsRoute extends NestedAppRoute {
  static const String _routeName = "records";
  static const String _routePath = "/records";

  const RecordsRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );
}
