import 'package:to_do_app/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  Stream<List<TodoEntity>> watchTodos(String userId);
  Future<void> addTodo(String userId, TodoEntity todo);
  Future<TodoEntity> fetchTodoById(String userId, String todoId);
  Future<void> deleteTodoById(String userId, String todoId);
  Future<void> updateTodoById(String userId, TodoEntity todo);
  Future<void> completeTodoById(String userId, String todoId);
}
