import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/themes/app_themes.dart';
import 'package:to_do_app/domain/classes/get_user_data.dart';
import 'package:to_do_app/domain/mappers/theme_mapper.dart';
import 'package:to_do_app/domain/repository/theme_repository.dart';

@injectable
class GetCurrentThemeUsecase {
  final ThemeRepository _themeRepository;
  final GetUserData _getUserData;
  final AppThemes _appThemes;
  final ThemeMapper _mappr;

  const GetCurrentThemeUsecase(
    this._themeRepository,
    this._getUserData,
    this._appThemes,
    this._mappr,
  );

  Future<ThemeData> getCurrentTheme() async {
    try {
      final entity = await _themeRepository.getCurrentTheme(
        _getUserData.userId,
      );
      final themeData = _mappr.getThemeDataFromEntity(entity);
      return themeData;
    } catch (_) {
      return _appThemes.darkTheme;
    }
  }
}
