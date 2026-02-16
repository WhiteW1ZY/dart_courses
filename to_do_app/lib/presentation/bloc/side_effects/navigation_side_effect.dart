abstract class NavigationSideEffect {}

class ShowAddTodoScreen implements NavigationSideEffect {}

class ShowUpdateTodoScreen implements NavigationSideEffect {
  final String todoId;

  const ShowUpdateTodoScreen({required this.todoId});
}
