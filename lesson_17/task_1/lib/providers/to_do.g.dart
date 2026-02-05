// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Todo on TodoBase, Store {
  Computed<int>? _$taskCountComputed;

  @override
  int get taskCount => (_$taskCountComputed ??= Computed<int>(
    () => super.taskCount,
    name: 'TodoBase.taskCount',
  )).value;

  late final _$tasksAtom = Atom(name: 'TodoBase.tasks', context: context);

  @override
  ObservableList<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$TodoBaseActionController = ActionController(
    name: 'TodoBase',
    context: context,
  );

  @override
  void addTask(String description) {
    final _$actionInfo = _$TodoBaseActionController.startAction(
      name: 'TodoBase.addTask',
    );
    try {
      return super.addTask(description);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(int index) {
    final _$actionInfo = _$TodoBaseActionController.startAction(
      name: 'TodoBase.removeTask',
    );
    try {
      return super.removeTask(index);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
taskCount: ${taskCount}
    ''';
  }
}
