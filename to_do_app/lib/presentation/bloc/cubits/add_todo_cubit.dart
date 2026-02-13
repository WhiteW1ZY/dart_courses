import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/exceptions/todo_exception.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/domain/usecases/todo/add_todo_usecase.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/add_todo_state/add_todo_state.dart';

@injectable
class AddTodoCubit extends Cubit<AddTodoState> {
  final AddTodoUsecase _addTodoUsecase;

  AddTodoCubit(this._addTodoUsecase) : super(const AddTodoState());

  final _streamController = StreamController<ActionCompletedSideEffect>();

  Stream<ActionCompletedSideEffect> get sideEffects => _streamController.stream;

  @override
  Future<void> close() {
    _streamController.close();
    return super.close();
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
    emit(state.copyWith(addTodoState: .loading()));
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
      emit(state.copyWith(addTodoState: .initial()));
      return;
    }

    try {
      await _addTodoUsecase.addTodo(
        TodoEntity(
          title: titleValidator.value,
          description: descriptionValidator.value,
          isCompleted: false,
        ),
      );

      _streamController.add(TaskCompletedSideEffect());
      emit(state.copyWith(addTodoState: .success()));
    } catch (ex) {
      String exeptionText = ex is TodoException ? ex.message : ex.toString();
      emit(state.copyWith(addTodoState: .error(exeptionText)));
    }
    emit(state.copyWith(addTodoState: .initial()));
  }
}
