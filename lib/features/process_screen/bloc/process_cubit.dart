import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_state.dart';

part 'process_cubit.freezed.dart';

class ProcessCubit extends Cubit<ProcessState> {
  ProcessCubit({
    required this.getShortestPath,
    required this.setCalculationDataUsecase
  }) : super(const ProcessState()) {
    _init();
  }

  final GetShortestPath getShortestPath;
  final SetCalculationDataUsecase setCalculationDataUsecase;

  void _init() {
    _findShortestPath();
  }

  Future<void> _findShortestPath() async {
    final shortestPath = await getShortestPath.execute();

    emit(state.copyWith(
      status: ProcessStateStatus.counted,
      shortestPath: shortestPath,
    ));
  }

  Future<void> submitCalculations() async {
    emit(state.copyWith(status: ProcessStateStatus.sendingCalculations));

    try {
      final response = await setCalculationDataUsecase.execute(state.shortestPath!);
      if (response == null) {
        throw Exception('No response from the server');
      } else if (response.error == true) {
        throw Exception(response.message);
      } else {
        emit(state.copyWith(status: ProcessStateStatus.success));
      }
    } on Exception catch (e) {
      emit(state.copyWith(
        error: e,
        status: ProcessStateStatus.failure,
      ));
    }
  }
}
