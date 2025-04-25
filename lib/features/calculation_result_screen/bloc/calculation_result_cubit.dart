import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecases/get_saved_task_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculation_result_state.dart';

part 'calculation_result_cubit.freezed.dart';

class CalculationResultCubit extends Cubit<CalculationResultState> {
  CalculationResultCubit({
    required this.shortestPath,
    required this.getSavedTaskDataUsecase,
  }) : super(const CalculationResultState()) {
    _init();
  }

  final CalculationDataModel shortestPath;
  final GetSavedTaskDataUsecase getSavedTaskDataUsecase;

  void _init() {
    final tasks = getSavedTaskDataUsecase.execute();
    final tasksData = tasks!.data;
    
    final taskData = tasksData.firstWhere((data) => data.id == shortestPath.id);

    emit(state.copyWith(
      shortestPath: shortestPath,
      taskData: taskData,
    ));
  }
}
