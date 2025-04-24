import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';

abstract class UpdateUrlStorageUsecase {
  Future<String> execute(String link);
}

@Injectable(as: UpdateUrlStorageUsecase)
class UpdateUrlStorageUsecaseImpl implements UpdateUrlStorageUsecase {
  UpdateUrlStorageUsecaseImpl(
    this.urlStorageRepository,
  );

  final UrlStorageRepository urlStorageRepository;

  @override
  Future<String> execute(String link) async {
    final newLink = urlStorageRepository.setNewLink(
      link: link,
    );

    return newLink;
  }
}
