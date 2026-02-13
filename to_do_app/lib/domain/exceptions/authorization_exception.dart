class AuthorizationException implements Exception {
  final String message;

  const AuthorizationException({required this.message});
  @override
  String toString() {
    return "AuthorizationException: $message";
  }
}
