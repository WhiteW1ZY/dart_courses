import 'package:to_do_app/domain/entities/todo_entity.dart';

abstract class NavigationSideEffect {}

class ShowAddTodoScreen implements NavigationSideEffect {}

class ShowUpdateTodoScreen implements NavigationSideEffect {
  final TodoEntity todo;

  const ShowUpdateTodoScreen({required this.todo});
}
