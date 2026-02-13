import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/exceptions/todo_exception.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/domain/usecases/todo/update_todo_usecase.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/update_todo_state/update_todo_state.dart';

@injectable
class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final UpdateTodoUsecase _updateTodoUsecase;

  late final String todoId;

  UpdateTodoCubit(this._updateTodoUsecase, @factoryParam TodoEntity todo)
    : super(
        UpdateTodoState().copyWith(
          titleValidator: TodoNodeValidator.dirty(todo.title),
          descriptionValidator: TodoNodeValidator.dirty(todo.description),
          isCompleted: todo.isCompleted,
        ),
      ) {
    todoId = todo.id!;
  }

  final _streamController = StreamController<ActionCompletedSideEffect>();

  Stream<ActionCompletedSideEffect> get sideEffects => _streamController.stream;

  @override
  Future<void> close() {
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
          id: todoId,
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
