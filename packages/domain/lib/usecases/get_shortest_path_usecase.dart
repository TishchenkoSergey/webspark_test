import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class GetShortestPath {
  Future<List<CalculationDataModel>> execute();
}

@Injectable(as: GetShortestPath)
class GetShortestPathImpl implements GetShortestPath {
  GetShortestPathImpl(
    this.getTaskDataUsecase,
    this.breadthFirstSearch,
  );

  final GetTaskDataUsecase getTaskDataUsecase;
  final BreadthFirstSearchUsecase breadthFirstSearch;

  @override
  Future<List<CalculationDataModel>> execute() async {
    final taskData = await getTaskDataUsecase.execute();
    final tasks = taskData!.data;

    return tasks.map((task) {
      final result = breadthFirstSearch.execute(task);
      final pathString = result.map((p) => p.toString()).join('->');

      return CalculationDataModel(
        id: task.id,
        result: CalculationResultModel(
          steps: result,
          path: pathString,
        ),
      );
    }).toList();
  }
}
