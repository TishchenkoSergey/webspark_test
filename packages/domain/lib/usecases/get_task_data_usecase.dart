import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class GetTaskDataUsecase {
  Future<TaskDataModel?> execute();
}

@Injectable(as: GetTaskDataUsecase)
class GetTaskDataUsecaseImpl implements GetTaskDataUsecase {
  GetTaskDataUsecaseImpl(
    this.getTaskDataRepository,
    this.urlStorageRepository,
    this.taskStorageRepository,
  );

  final TaskDataRepository getTaskDataRepository;
  final UrlStorageRepository urlStorageRepository;
  final TaskStorageRepository taskStorageRepository;

  @override
  Future<TaskDataModel?> execute() async {
    final link = urlStorageRepository.getLastLink();
    final taskData = await getTaskDataRepository.getTaskData(link);
    taskStorageRepository.taskData = taskData;

    return taskData;
  }
}
