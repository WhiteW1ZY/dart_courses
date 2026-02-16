import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/entities/theme/theme_entity.dart';
import 'package:to_do_app/domain/repository/theme_repository.dart';

@injectable
class SetCurrentThemeUsecase {
  final ThemeRepository _themeRepository;
  final GetUserData _getUserData;

  const SetCurrentThemeUsecase(this._themeRepository, this._getUserData);

  Future<void> setCurrentThemeUsecase(ThemeEntity themeEntity) async {
    await _themeRepository.setCurrentTheme(_getUserData.userId, themeEntity);
  }
}
