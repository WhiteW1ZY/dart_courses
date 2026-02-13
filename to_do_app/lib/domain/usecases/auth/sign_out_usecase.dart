import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

@injectable
class SignOutUsecase {
  final AuthorizationRepository _authorizationRepository;

  const SignOutUsecase(this._authorizationRepository);

  Future<void> signOut() async => await _authorizationRepository.signOut();
}
