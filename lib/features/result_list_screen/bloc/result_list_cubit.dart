import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_list_state.dart';

part 'result_list_cubit.freezed.dart';

class ResultListCubit extends Cubit<ResultListState> {
  ResultListCubit({
    required this.shortestPath,
  }) : super(const ResultListState()) {
    _init();
  }

  final List<CalculationDataModel> shortestPath;

  void _init() {
    emit(state.copyWith(shortestPath: shortestPath));
  }
}
