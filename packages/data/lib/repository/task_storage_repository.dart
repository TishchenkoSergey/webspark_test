import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

@LazySingleton(as: TaskStorageRepository)
class TaskDataStorageRepositoryImpl implements TaskStorageRepository {
  TaskDataModel? _taskData;

  @override
  TaskDataModel? get taskData => _taskData;

  @override
  set taskData(TaskDataModel? data) {
    _taskData = data;
  }
}
