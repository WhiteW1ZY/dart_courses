import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class DeleteTodoUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserData;

  const DeleteTodoUsecase(this._todoRepository, this._getUserData);

  Future<void> deleteTodoById(String todoId) async {
    await _todoRepository.deleteTodoById(_getUserData.userId, todoId);
  }
}
