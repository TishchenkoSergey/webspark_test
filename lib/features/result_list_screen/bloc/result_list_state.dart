part of 'result_list_cubit.dart';

@freezed
sealed class ResultListState with _$ResultListState {
  const factory ResultListState({
    List<CalculationDataModel>? shortestPath,
  }) = _ResultListState;

  const ResultListState._();
}
