import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class GetTodoUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserId;

  const GetTodoUsecase(this._todoRepository, this._getUserId);

  Future<TodoEntity> fetchTodoById(String todoId) async =>
      await _todoRepository.fetchTodoById(_getUserId.userId, todoId);
}
