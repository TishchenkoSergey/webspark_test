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
  );

  final GetTaskDataRepository getTaskDataRepository;
  final UrlStorageRepository urlStorageRepository;

  @override
  Future<TaskDataModel?> execute() async {
    final link = urlStorageRepository.getLastLink();
    final taskData = getTaskDataRepository.getTaskData(link);

    return taskData;
  }
}
