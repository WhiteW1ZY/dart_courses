import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';

part 'todo_list_state.freezed.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default(true) bool isLoading,
    @Default([]) List<TodoEntity> todos,
    @Default(null) String? errorDescription,
  }) = _TodoListState;
}
