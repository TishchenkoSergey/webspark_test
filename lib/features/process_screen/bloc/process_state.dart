part of 'process_cubit.dart';

enum ProcessStateStatus {
  initial,
  counting,
  sendingCalculations,
  success,
  failure;

  bool get isInitial => this == initial;
}

@freezed
sealed class ProcessState with _$ProcessState {
  const factory ProcessState({
    @Default(ProcessStateStatus.initial) ProcessStateStatus status,
  }) = _ProcessState;

  const ProcessState._();
}
