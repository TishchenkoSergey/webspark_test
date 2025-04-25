import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

final _logger = Logger('TaskDataRepository');

@Injectable(as: TaskDataRepository)
class TaskDataRepositoryImpl implements TaskDataRepository {
  const TaskDataRepositoryImpl();

  @override
  Future<TaskDataModel?> getTaskData(String link) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(link);
      return TaskDataModel.fromJson(response.data!);
    } catch (e) {
      // Properly handle the exception: either rethrow it or wrap it in a custom exception for clearer context
      _logger.info('Failed to getting request from server', e);

      return null;
    }
  }
}
