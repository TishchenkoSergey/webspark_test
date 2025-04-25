import 'package:domain/models/models.dart';

abstract class TaskDataRepository {
  Future<TaskDataModel?> getTaskData(String link);
}
