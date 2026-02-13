import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_state.freezed.dart';

@freezed
abstract class ProcessState with _$ProcessState {
  const factory ProcessState.initial() = ProcessInitialState;
  const factory ProcessState.loading() = ProcessLoadingState;
  const factory ProcessState.success() = ProcessSuccessState;
  const factory ProcessState.error(final String description) =
      ProcessErrorState;
}
