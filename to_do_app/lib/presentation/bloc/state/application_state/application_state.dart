import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'application_state.freezed.dart';

@freezed
abstract class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    ThemeData? selectedTheme,
    @Default(true) bool isLoading,
  }) = _ApplicationState;
}
