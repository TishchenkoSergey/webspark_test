import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/usecases/usecases.dart';

part 'process_state.dart';

part 'process_cubit.freezed.dart';

class ProcessCubit extends Cubit<ProcessState> {
  ProcessCubit({
    required this.getShortestPath,
  }) : super(const ProcessState()) {
    _init();
  }

  final GetShortestPath getShortestPath;

  void _init() {
    emit(state.copyWith(status: ProcessStateStatus.counting));
    _findShortestPath();
  }

  Future<void> _findShortestPath() async {
    await getShortestPath.execute();
  }
}
