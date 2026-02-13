import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:to_do_app/data/mappers/todo_mappr/todo_mappr.auto_mappr.dart';
import 'package:to_do_app/data/models/todo_model/todo_model.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';

@AutoMappr([MapType<TodoModel, TodoEntity>(), MapType<TodoEntity, TodoModel>()])
class TodoMappr extends $TodoMappr {
  TodoEntity? nullableTodoModelToEntity(TodoModel? model) =>
      model == null ? null : convert(model);

  TodoModel? nullableTodoEntityToModel(TodoEntity? entity) =>
      entity == null ? null : convert(entity);
}
