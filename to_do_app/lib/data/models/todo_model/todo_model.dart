import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const factory TodoModel({
    String? id,
    required String title,
    required String description,
    required bool isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);
}
