import 'package:to_do_app/app/navigation/router/abstract/app_route.dart';

abstract class NestedAppRoute extends AppRoute {
  final String routeAbsolutePath;

  const NestedAppRoute({
    required this.routeAbsolutePath,
    required super.routeName,
    required super.routePath,
  });
}
