import 'package:to_do_app/domain/entities/user_entity.dart';

abstract interface class AuthorizationRepository {
  UserEntity? get currentUser;
  Stream<UserEntity?> get userStream;
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> registerWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}
