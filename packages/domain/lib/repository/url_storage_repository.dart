abstract class UrlStorageRepository {
  Future<String> getLastLink();

  Future<String> setNewLink({
    required String link,
  });
}
