import 'package:quiz_app/app/navigation/routers/abstract/app_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/categories_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/profile_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/records_route.dart';

class HomeRoute extends AppRoute {
  static const String _routeName = "home";
  static const String _routePath = "/home";

  final profileRoute = ProfileRoute(parentAbsolutePath: _routePath);
  final categoriesRoute = CategoriesRoute(parentAbsolutePath: _routePath);
  final recordsRoute = RecordsRoute(parentAbsolutePath: _routePath);

  HomeRoute() : super(name: _routeName, path: _routePath);
}
