import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/user_entity.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

@injectable
class AuthorizationUsecase {
  final AuthorizationRepository _authorizationRepository;

  AuthorizationUsecase(this._authorizationRepository);

  bool get isAuthenticated => _currentUser != null;

  UserEntity? get _currentUser => _authorizationRepository.currentUser;

  Stream<UserEntity?> get _userStream => _authorizationRepository.userStream;

  Stream<bool> get authStateChanged => _userStream.map((e) => e != null);
}
