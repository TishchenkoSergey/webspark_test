import '../domain.dart';

abstract class TaskStorageRepository {
  TaskDataModel? get taskData;
  set taskData(TaskDataModel? data);
}
