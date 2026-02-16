import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart';
import 'package:to_do_app/data/models/todo_model/todo_model.dart';
import 'package:to_do_app/domain/entities/todo_entity.dart';
import 'package:to_do_app/domain/exceptions/not_found_exeption.dart';
import 'package:to_do_app/domain/repository/todo_repository.dart';

@Injectable(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final FirebaseFirestore _firebaseFirestore;
  final TodoMappr _mappr;

  String _todoCollectionAbsolutePath(String userId) =>
      "$_usersCollectionPath/$userId/$_todoCollectionPath";

  String _todoAbsolutePath(String userId, String todoId) =>
      "${_todoCollectionAbsolutePath(userId)}/$todoId";

  static const String _todoCollectionPath = "todo";
  static const String _usersCollectionPath = "users";

  const TodoRepositoryImpl(this._firebaseFirestore, this._mappr);

  @override
  Stream<List<TodoEntity>> watchTodos(String userId) =>
      _queryTodos(userId).snapshots().map((e) {
        final docs = e.docs;
        final items = docs
            .map((e) => _mappr.nullableTodoModelToEntity(e.data()))
            .nonNulls
            .toList();
        return items;
      });

  Query<TodoModel?> _queryTodos(String userId) => _firebaseFirestore
      .collection(_todoCollectionAbsolutePath(userId))
      .withConverter(
        fromFirestore: (e, _) {
          final data = e.data();
          if (data == null) {
            return null;
          }
          return TodoModel.fromJson(data);
        },
        toFirestore: (e, _) => e?.toJson() ?? {},
      );

  @override
  Future<void> addTodo(String userId, TodoEntity todo) async {
    final colRef = _firebaseFirestore.collection(
      _todoCollectionAbsolutePath(userId),
    );
    final todoModel = _mappr.nullableTodoEntityToModel(todo)!;
    final docRef = await colRef.add(todoModel.toJson());
    final docSnapshot = await docRef.get();
    final data = docSnapshot.data() ?? {};
    final newTodo = TodoModel.fromJson(data).copyWith(id: docSnapshot.id);
    await docRef.set(newTodo.toJson());
  }

  @override
  Future<TodoEntity> fetchTodoById(String userId, String todoId) async {
    final docPath = _firebaseFirestore.doc(
      "${_todoCollectionAbsolutePath(userId)}/$todoId",
    );
    final docRef = await docPath.get();
    final data = docRef.data();

    if (data == null) {
      throw NotFoundException(
        message:
            "User with this id $userId or todo with id $todoId was not found",
      );
    }

    final todo = TodoModel.fromJson(data);

    return _mappr.nullableTodoModelToEntity(todo)!;
  }

  @override
  Future<void> deleteTodoById(String userId, String todoId) async {
    final docPath = _firebaseFirestore.doc(
      "${_todoCollectionAbsolutePath(userId)}/$todoId",
    );

    await docPath.delete();
  }

  @override
  Future<void> updateTodoById(String userId, TodoEntity todo) async {
    final docRef = _firebaseFirestore.doc(_todoAbsolutePath(userId, todo.id!));
    final docSnapshot = await docRef.get();
    final data = docSnapshot.data();

    if (data == null) {
      throw NotFoundException(
        message:
            "User with this id $userId or todo with id ${todo.id!} was not found",
      );
    }
    final newTodo = _mappr.nullableTodoEntityToModel(todo) as TodoModel;
    await docRef.set(newTodo.toJson());
  }

  @override
  Future<void> completeTodoById(String userId, String todoId) async {
    final docRef = _firebaseFirestore.doc(_todoAbsolutePath(userId, todoId));
    final docSnapshot = await docRef.get();
    final data = docSnapshot.data();

    if (data == null) {
      throw NotFoundException(
        message:
            "User with this id $userId or todo with id $todoId was not found",
      );
    }
    final newTodo = TodoModel.fromJson(data).copyWith(isCompleted: true);
    await docRef.set(newTodo.toJson());
  }
}
