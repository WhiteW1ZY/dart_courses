import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/navigation/router/abstract/app_route.dart';
import 'package:to_do_app/app/navigation/router/nested_routes/add_todo_route.dart';
import 'package:to_do_app/app/navigation/router/nested_routes/update_todo_route.dart';

@injectable
class TodoListRoute extends AppRoute {
  static const String _routeName = "home";
  static const String _routePath = "/home";

  final addTodoRoute = AddTodoRoute(parentAbsolutePath: _routePath);
  final updateTodoRoute = UpdateTodoRoute(parentAbsolutePath: _routePath);

  TodoListRoute() : super(routeName: _routeName, routePath: _routePath);
}
