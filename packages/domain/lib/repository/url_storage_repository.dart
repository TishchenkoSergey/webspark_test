abstract class UrlStorageRepository {
  String getLastLink();

  Future<String> setNewLink({
    required String link,
  });
}
