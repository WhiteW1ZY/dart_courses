import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

@injectable
class SignInUsecase {
  final AuthorizationRepository _authorizationRepository;

  const SignInUsecase(this._authorizationRepository);

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async => await _authorizationRepository.signInWithEmailAndPassword(
    email,
    password,
  );
}
