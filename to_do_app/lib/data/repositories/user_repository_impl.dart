import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/mappers/user_mappr.dart/user_mappr.dart';
import 'package:to_do_app/domain/entities/user_entity.dart';
import 'package:to_do_app/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final UserMappr _userMappr;
  const UserRepositoryImpl(this._firebaseAuth, this._userMappr);

  @override
  UserEntity get userEntity => _userMappr.convert(_firebaseAuth.currentUser!);
}
