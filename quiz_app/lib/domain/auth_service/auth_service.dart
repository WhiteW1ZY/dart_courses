import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthService {
  bool get isAuthenticated;
  User? get currentUser;
  Stream<User?> get userStream;
  Stream<bool> get authStateChanged;
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> registerWithEmailAndPassword(String email, String password);
  Future<void> singOut();
}
