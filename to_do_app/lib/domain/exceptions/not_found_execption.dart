class NotFoundExecption implements Exception {
  final String message;

  const NotFoundExecption({required this.message});
  @override
  String toString() {
    return "NotFoundExecption: $message";
  }
}
