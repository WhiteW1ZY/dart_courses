import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

@injectable
class SignUpUsecase {
  final AuthorizationRepository _authorizationRepository;

  const SignUpUsecase(this._authorizationRepository);

  Future<void> registerWithEmailAndPassword(
    String email,
    String password,
  ) async => await _authorizationRepository.registerWithEmailAndPassword(
    email,
    password,
  );
}
