part of 'process_cubit.dart';

enum ProcessStateStatus {
  initial,
  counted,
  sendingCalculations,
  success,
  failure;

  bool get isInitial => this == initial;
}

@freezed
sealed class ProcessState with _$ProcessState {
  const factory ProcessState({
    @Default(ProcessStateStatus.initial) ProcessStateStatus status,
    List<CalculationDataModel>? shortestPath,
    Object? error,
  }) = _ProcessState;

  const ProcessState._();

  bool get isError => error != null;
}
