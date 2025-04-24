import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class GetTaskDataUsecase {
  Future<TaskDataModel?> execute(String link);
}

@Injectable(as: GetTaskDataUsecase)
class GetTaskDataUsecaseImpl implements GetTaskDataUsecase {
  GetTaskDataUsecaseImpl(
    this.getTaskDataRepository,
  );

  final GetTaskDataRepository getTaskDataRepository;

  @override
  Future<TaskDataModel?> execute(String link) async {
    final newLink = getTaskDataRepository.getTaskData(link);

    return newLink;
  }
}
