import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/domain/auth_service/auth_service.dart';

final class AuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;

  const AuthServiceImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  @override
  Stream<User?> get userStream => _firebaseAuth.userChanges();

  @override
  Stream<bool> get authStateChanged => userStream.map((e) => e != null);

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  bool get isAuthenticated => currentUser != null;

  @override
  Future<void> registerWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> singOut() {
    return _firebaseAuth.signOut();
  }
}
