import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/navigation/router/abstract/app_route.dart';
import 'package:to_do_app/app/navigation/router/routes/root_routes/profile_route.dart';
import 'package:to_do_app/app/navigation/router/routes/root_routes/todo_list_route.dart';

@injectable
class RootRoute extends AppRoute {
  static const _routeName = "root";
  static const _routePath = "/root";

  final TodoListRoute todoListRoute = TodoListRoute();
  final ProfileRoute profileRoute = ProfileRoute();

  RootRoute() : super(routeName: _routeName, routePath: _routePath);
}
