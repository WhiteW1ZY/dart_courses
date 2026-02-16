import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/models/theme_model/theme_model.dart';
import 'package:to_do_app/domain/entities/theme/dark_theme_entity.dart';
import 'package:to_do_app/domain/entities/theme/light_theme_entity.dart';
import 'package:to_do_app/domain/entities/theme/theme_entity.dart';
import 'package:to_do_app/domain/exceptions/not_found_exeption.dart';

@injectable
class ThemeMappr {
  static const String _lightThemeString = "light";
  static const String _darkThemeString = "dark";

  ThemeEntity getThemeEntityFromModel(ThemeModel model) =>
      switch (model.theme) {
        _lightThemeString => LightThemeEntity(),
        _darkThemeString => DarkThemeEntity(),
        _ => throw NotFoundException(
          message: "Theme with name ${model.theme} was not found",
        ),
      };

  ThemeModel getThemeModelFromEntity(ThemeEntity entity) => switch (entity) {
    DarkThemeEntity _ => ThemeModel(theme: _darkThemeString),
    LightThemeEntity _ => ThemeModel(theme: _lightThemeString),
    _ => throw NotFoundException(
      message: "Theme with this type ${entity.runtimeType} was not found",
    ),
  };
}
