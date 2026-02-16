import 'package:to_do_app/domain/entities/theme/theme_entity.dart';

abstract class ThemeRepository {
  Future<ThemeEntity> getCurrentTheme(String userId);
  Future<void> setCurrentTheme(String userId, ThemeEntity themeEntity);
}
