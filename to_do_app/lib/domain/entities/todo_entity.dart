class TodoEntity {
  final String? id;
  final String title;
  final String description;
  final bool isCompleted;

  const TodoEntity({
    this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });
}
