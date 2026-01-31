import 'package:quiz_app/app/navigation/routers/abstract/app_route.dart';

abstract class NestedAppRoute extends AppRoute {
  final String routeAbsolutePath;

  const NestedAppRoute({
    required this.routeAbsolutePath,
    required String routeName,
    required String routePath,
  }) : super(name: routeName, path: routePath);
}
