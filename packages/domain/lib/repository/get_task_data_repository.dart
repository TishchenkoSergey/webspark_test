import 'package:domain/models/models.dart';

abstract class GetTaskDataRepository {
  Future<TaskDataModel?> getTaskData(String link);
}
