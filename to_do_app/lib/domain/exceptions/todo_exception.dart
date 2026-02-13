class TodoException implements Exception {
  final String message;

  const TodoException({required this.message});
  @override
  String toString() {
    return "TodoException: $message";
  }
}
