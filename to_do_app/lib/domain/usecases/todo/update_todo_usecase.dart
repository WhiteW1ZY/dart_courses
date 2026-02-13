import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class UpdateTodoUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserId;

  const UpdateTodoUsecase(this._todoRepository, this._getUserId);

  Future<void> updateTodoById(TodoEntity todo) async =>
      await _todoRepository.updateTodoById(_getUserId.userId, todo);
}
