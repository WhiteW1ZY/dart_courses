import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/themes/app_themes.dart';
import 'package:to_do_app/domain/entities/theme/dark_theme_entity.dart';
import 'package:to_do_app/domain/entities/theme/light_theme_entity.dart';
import 'package:to_do_app/domain/entities/theme/theme_entity.dart';
import 'package:to_do_app/domain/exceptions/not_found_exeption.dart';

@injectable
class ThemeMapper {
  final AppThemes _appThemes;

  const ThemeMapper(this._appThemes);

  ThemeData getThemeDataFromEntity(ThemeEntity themeEntity) =>
      switch (themeEntity) {
        DarkThemeEntity _ => _appThemes.darkTheme,
        LightThemeEntity _ => _appThemes.lightTheme,
        _ => throw NotFoundException(
          message: "Cannot convert ${themeEntity.runtimeType} to ThemeData",
        ),
      };
}
