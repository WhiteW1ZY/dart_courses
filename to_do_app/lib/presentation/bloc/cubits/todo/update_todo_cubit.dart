import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/exceptions/not_found_exeption.dart';
import 'package:to_do_app/domain/exceptions/todo_exception.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/domain/usecases/todo/get_todo_usecase.dart';
import 'package:to_do_app/domain/usecases/todo/update_todo_usecase.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/bloc/state/todo/update_todo_state/update_todo_state.dart';

@injectable
class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final UpdateTodoUsecase _updateTodoUsecase;
  final GetTodoUsecase _getTodoUsecase;

  late final String _todoId;
  late final TodoEntity _todoEntity;
  late final CancelableOperation<TodoEntity> _fetchTodoFuture;

  UpdateTodoCubit(
    this._updateTodoUsecase,
    this._getTodoUsecase,
    @factoryParam String todoId,
  ) : super(UpdateTodoState()) {
    _todoId = todoId;
    _loadTodoEntityById(todoId);
  }

  Future<void> _loadTodoEntityById(String todoId) async {
    emit(state.copyWith(loadingDataState: ProcessState.loading()));

    try {
      _fetchTodoFuture = CancelableOperation.fromFuture(
        _getTodoUsecase.fetchTodoById(todoId),
      );
      _todoEntity = await _fetchTodoFuture.value;
      emit(
        state.copyWith(
          loadingDataState: .success(),
          descriptionValidator: TodoNodeValidator.dirty(
            _todoEntity.description,
          ),
          titleValidator: TodoNodeValidator.dirty(_todoEntity.title),
          isCompleted: _todoEntity.isCompleted,
        ),
      );
    } catch (ex) {
      String errorDescription = ex is NotFoundException
          ? ex.message
          : ex.toString();
      emit(state.copyWith(loadingDataState: .error(errorDescription)));
    }
  }

  final _streamController = StreamController<ActionCompletedSideEffect>();

  Stream<ActionCompletedSideEffect> get sideEffects => _streamController.stream;

  @override
  Future<void> close() {
    _fetchTodoFuture.cancel();
    _streamController.close();
    return super.close();
  }

  void onCompletedChanged() {
    emit(state.copyWith(isCompleted: !state.isCompleted));
  }

  void onTitleChange(String value) {
    final titleValidator = TodoNodeValidator.dirty(value);
    emit(state.copyWith(titleValidator: titleValidator));
  }

  void onDescriptionChange(String value) {
    final descriptionValidator = TodoNodeValidator.dirty(value);
    emit(state.copyWith(descriptionValidator: descriptionValidator));
  }

  void loadTodoEntity() async {
    await _loadTodoEntityById(_todoId);
  }

  Future<void> onSubmit() async {
    emit(state.copyWith(updateTodoState: .loading()));
    final titleValidator = TodoNodeValidator.dirty(state.titleValidator.value);
    final descriptionValidator = TodoNodeValidator.dirty(
      state.descriptionValidator.value,
    );

    emit(
      state.copyWith(
        titleValidator: titleValidator,
        descriptionValidator: descriptionValidator,
      ),
    );

    if (!Formz.validate([titleValidator, descriptionValidator])) {
      emit(state.copyWith(updateTodoState: .initial()));
      return;
    }

    try {
      await _updateTodoUsecase.updateTodoById(
        TodoEntity(
          id: _todoEntity.id,
          title: titleValidator.value,
          description: descriptionValidator.value,
          isCompleted: state.isCompleted,
        ),
      );

      _streamController.add(TaskCompletedSideEffect());
      emit(state.copyWith(updateTodoState: .success()));
    } catch (ex) {
      String exeptionText = ex is TodoException ? ex.message : ex.toString();
      emit(state.copyWith(updateTodoState: .error(exeptionText)));
    }
    emit(state.copyWith(updateTodoState: .initial()));
  }
}
