import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.freezed.dart';

@freezed
abstract class RootState with _$RootState {
  const factory RootState(int selectedPageIndex) = _RootState;
}
