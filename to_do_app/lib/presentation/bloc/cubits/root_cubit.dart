import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/presentation/bloc/side_effects/root_navigation_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/root_state/root_state.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootState(0));

  final _streamController = StreamController<RootNavigationSideEffect>();
  int get selectedPageIndex => state.selectedPageIndex;

  Stream<RootNavigationSideEffect> get sideEffects => _streamController.stream;

  void showTodoListScreen(int pageIndex) {
    emit(state.copyWith(selectedPageIndex: pageIndex));
    _streamController.add(ShowTodoListScreen());
  }

  void showSettingsScreen(int pageIndex) {
    emit(state.copyWith(selectedPageIndex: pageIndex));
    _streamController.add(ShowSettingsScreen());
  }

  @override
  Future<void> close() {
    _streamController.close();
    return super.close();
  }
}
