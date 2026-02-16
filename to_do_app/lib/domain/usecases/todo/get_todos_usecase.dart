import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@injectable
class GetTodosUsecase {
  final TodoRepository _todoRepository;
  final GetUserData _getUserId;

  const GetTodosUsecase(this._todoRepository, this._getUserId);

  Stream<List<TodoEntity>> get todoStream =>
      _todoRepository.watchTodos(_getUserId.userId);
}
