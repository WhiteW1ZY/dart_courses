import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/entities/theme/dark_theme_entity.dart';
import 'package:to_do_app/domain/entities/theme/light_theme_entity.dart';
import 'package:to_do_app/domain/usecases/theme/get_current_theme_usecase.dart';
import 'package:to_do_app/domain/usecases/theme/set_current_theme_usecase.dart';
import 'package:to_do_app/presentation/bloc/state/application_state/application_state.dart';

@injectable
class ApplicationCubit extends Cubit<ApplicationState> {
  final SetCurrentThemeUsecase _setCurrentThemeUsecase;
  final GetCurrentThemeUsecase _getCurrentThemeUsecase;

  late ThemeData _currentTheme;

  ApplicationCubit(this._getCurrentThemeUsecase, this._setCurrentThemeUsecase)
    : super(const ApplicationState()) {
    _getCurrentTheme();
  }

  Future<void> _getCurrentTheme() async {
    final currentTheme = await _getCurrentThemeUsecase.getCurrentTheme();
    emit(state.copyWith(isLoading: false, selectedTheme: currentTheme));
  }

  ThemeData get currentTheme => _currentTheme;

  Future<void> setDartTheme() async {
    await _setCurrentThemeUsecase.setCurrentThemeUsecase(DarkThemeEntity());
    emit(
      state.copyWith(
        selectedTheme: await _getCurrentThemeUsecase.getCurrentTheme(),
      ),
    );
  }

  Future<void> setLightTheme() async {
    await _setCurrentThemeUsecase.setCurrentThemeUsecase(LightThemeEntity());
    emit(
      state.copyWith(
        selectedTheme: await _getCurrentThemeUsecase.getCurrentTheme(),
      ),
    );
  }
}
