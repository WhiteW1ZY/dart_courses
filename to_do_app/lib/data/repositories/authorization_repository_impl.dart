import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/mappers/user_mappr.dart/auth_mappr.dart';
import 'package:to_do_app/domain/entities/user_entity.dart';
import 'package:to_do_app/domain/exceptions/authorization_exception.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthorizationRepository)
class AuthorizationRepositoryImpl implements AuthorizationRepository {
  final FirebaseAuth _firebaseAuth;
  final AuthMappr _mappr;

  const AuthorizationRepositoryImpl(this._firebaseAuth, this._mappr);

  @override
  UserEntity? get currentUser =>
      _mappr.nullableUserEntityToModel(_firebaseAuth.currentUser);

  @override
  Stream<UserEntity?> get userStream => _firebaseAuth.userChanges().map(
    (user) => _mappr.nullableUserEntityToModel(user),
  );

  @override
  Future<void> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (ex) {
      throw AuthorizationException(message: ex.message ?? "");
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (ex) {
      throw AuthorizationException(message: ex.message ?? "");
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
