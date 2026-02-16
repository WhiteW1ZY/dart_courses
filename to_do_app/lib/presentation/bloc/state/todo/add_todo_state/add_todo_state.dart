import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';

part 'add_todo_state.freezed.dart';

@freezed
abstract class AddTodoState with _$AddTodoState {
  const factory AddTodoState({
    @Default(TodoNodeValidator.pure()) TodoNodeValidator titleValidator,
    @Default(TodoNodeValidator.pure()) TodoNodeValidator descriptionValidator,
    @Default(ProcessState.initial()) ProcessState addTodoState,
  }) = _AddTodoState;
}
