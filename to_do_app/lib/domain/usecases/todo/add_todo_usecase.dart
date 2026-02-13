import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class AddTodoUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserData;

  const AddTodoUsecase(this._todoRepository, this._getUserData);

  Future<void> addTodo(TodoEntity todoEntity) async {
    await _todoRepository.addTodo(_getUserData.userId, todoEntity);
  }
}
