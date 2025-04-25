part of 'calculation_result_cubit.dart';

@freezed
sealed class CalculationResultState with _$CalculationResultState {
  const factory CalculationResultState({
    CalculationDataModel? shortestPath,
    CountingDataModel? taskData,
  }) = _CalculationResultState;

  const CalculationResultState._();
}
