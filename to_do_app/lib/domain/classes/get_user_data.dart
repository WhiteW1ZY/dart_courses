import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/exceptions/not_found_execption.dart';
import 'package:to_do_app/domain/repository/authorization_repository.dart';

@injectable
class GetUserData {
  final AuthorizationRepository _authorizationRepository;

  const GetUserData(this._authorizationRepository);

  String get userId {
    final userId = _authorizationRepository.currentUser?.id;

    if (userId == null) {
      throw NotFoundExecption(message: "user not found");
    }

    return userId;
  }
}
