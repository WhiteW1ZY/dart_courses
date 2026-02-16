import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';

import 'package:to_do_app/domain/usecases/todo/comple_todo_usecase.dart';
import 'package:to_do_app/domain/usecases/todo/delete_todo_usecase.dart';
import 'package:to_do_app/domain/usecases/todo/get_todos_usecase.dart';
import 'package:to_do_app/presentation/bloc/side_effects/navigation_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/todo/todo_list_state/todo_list_state.dart';

@injectable
class TodoListCubit extends Cubit<TodoListState> {
  final GetTodosUsecase _getTodosUsecase;
  final DeleteTodoUsecase _deleteTodoUsecase;
  final CompleTodoUsecase _compleTodoUsecase;

  final _sideEffects = StreamController<NavigationSideEffect>();
  late final StreamSubscription<List<TodoEntity>> _subscription;

  Stream<NavigationSideEffect> get sideEffects => _sideEffects.stream;

  TodoListCubit(
    this._getTodosUsecase,
    this._deleteTodoUsecase,
    this._compleTodoUsecase,
  ) : super(const TodoListState()) {
    _subscription = _getTodosUsecase.todoStream.listen(
      _hasData,
      onError: _onError,
    );
  }

  void showAddTodoPage() {
    _sideEffects.add(ShowAddTodoScreen());
  }

  void showUpdateTodoPage(String todoId) {
    _sideEffects.add(ShowUpdateTodoScreen(todoId: todoId));
  }

  Future<void> deleteTodoById(String todoId) async {
    await _deleteTodoUsecase.deleteTodoById(todoId);
  }

  Future<void> completeTodoById(String todoId) async {
    await _compleTodoUsecase.completeTodoById(todoId);
  }

  void _hasData(List<TodoEntity> data) => emit(
    TodoListState(isLoading: false, todos: data, errorDescription: null),
  );

  void _onError(Object error) => emit(
    TodoListState(
      isLoading: false,
      todos: [],
      errorDescription: error.toString(),
    ),
  );

  @override
  Future<void> close() {
    _sideEffects.close();
    _subscription.cancel();
    return super.close();
  }
}
