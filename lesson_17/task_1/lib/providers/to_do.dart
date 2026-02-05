import 'package:mobx/mobx.dart';
import 'package:task_1/entities/task.dart';

part 'to_do.g.dart';

class Todo = TodoBase with _$Todo;

abstract class TodoBase with Store {
  @observable
  ObservableList<Task> tasks = ObservableList<Task>();

  @action
  void addTask(String description) {
    tasks.add(Task(description: description));
  }

  @action
  void removeTask(int index) {
    tasks.removeAt(index);
  }

  @computed
  int get taskCount => tasks.length;
}
