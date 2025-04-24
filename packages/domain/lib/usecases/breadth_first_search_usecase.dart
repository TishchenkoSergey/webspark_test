import 'dart:collection';

import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class BreadthFirstSearchUsecase {
  List<PointModel> execute(CountingDataModel task);
}

@Injectable(as: BreadthFirstSearchUsecase)
class BreadthFirstSearchUsecaseImpl implements BreadthFirstSearchUsecase {
  BreadthFirstSearchUsecaseImpl();

  @override
  List<PointModel> execute(CountingDataModel task) {
    final matrix = task.gridMatrix;
    final visited = <PointModel>{};
    final queue = Queue<List<PointModel>>()..add([task.start]);
    visited.add(task.start);

    while (queue.isNotEmpty) {
      final path = queue.removeFirst();
      final current = path.last;

      if (current == task.end) {
        return path;
      }

      for (final dir in kDirections) {
        var nx = current.x;
        var ny = current.y;

        while (true) {
          nx += dir[0];
          ny += dir[1];

          if (nx < 0 || ny < 0 || nx >= matrix.length || ny >= matrix[0].length) break;
          if (matrix[nx][ny] == 'X') break;

          final next = PointModel(x: nx, y: ny);
          if (visited.contains(next)) continue;

          visited.add(next);
          queue.add([...path, next]);
          break;
        }
      }
    }

    return [];
  }
}
