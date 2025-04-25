import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class GetSavedTaskDataUsecase {
  TaskDataModel? execute();
}

@Injectable(as: GetSavedTaskDataUsecase)
class GetSavedTaskDataUsecaseImpl implements GetSavedTaskDataUsecase {
  GetSavedTaskDataUsecaseImpl(
    this.taskStorageRepository,
  );

  final TaskStorageRepository taskStorageRepository;

  @override
  TaskDataModel? execute() {
    return taskStorageRepository.taskData;
  }
}
