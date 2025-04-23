import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: UrlStorageRepository)
class UrlStorageRepositoryImpl implements UrlStorageRepository {
  UrlStorageRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _lastLinkKey = 'lastLinkKey';

  @override
  Future<String> getLastLink() {
    return Future.value(_lastLinkKey);
  }

  @override
  Future<String> setNewLink({
    required String link,
  }) async {
    await sharedPreferences.setString(_lastLinkKey, link);
    return link;
  }
}
