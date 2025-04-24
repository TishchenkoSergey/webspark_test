import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class GetShortestPath {
  Future<List<Map<String, dynamic>>> execute();
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
  Future<List<Map<String, dynamic>>> execute() async {
    final taskData = await getTaskDataUsecase.execute();
    final tasks = taskData!.data;

    return tasks.map((task) {
      final result = breadthFirstSearch.execute(task);
      return {
        'id': task.id,
        'result': {
          'steps': result.map((p) => p.toJson()).toList(),
          'path': result.map((p) => p.toString()).join('->'),
        }
      };
    }).toList();
  }
}
