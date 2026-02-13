import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class CompleTodoUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserId;

  const CompleTodoUsecase(this._todoRepository, this._getUserId);

  Future<void> completeTodoById(String todoId) async =>
      await _todoRepository.completeTodoById(_getUserId.userId, todoId);
}
