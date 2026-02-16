import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/repository/user_repository.dart';

@injectable
class GetUserDataUsecase {
  final UserRepository _userRepository;

  const GetUserDataUsecase(this._userRepository);

  String get userEmail => _userRepository.userEntity.email!;
}
