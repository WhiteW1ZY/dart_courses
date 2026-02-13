import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/navigation/router/routes/todo_list_route.dart';
import 'package:to_do_app/app/navigation/router/routes/login_route.dart';

@injectable
class AppRoutes {
  final LoginRoute loginRoute = LoginRoute();
  final TodoListRoute todoListRoute = TodoListRoute();
}
