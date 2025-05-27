import 'package:core_datastore/datastore.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// [SharedPreferences] を利用したデータストア
final class PreferencesDataStore implements DataStore {
  PreferencesDataStore({required SharedPreferences preferences})
    : _preferences = preferences;

  final SharedPreferences _preferences;

  @override
  int? getInt(String key) => _preferences.getInt(key);

  @override
  Future<bool> setInt(String key, int value) => _preferences.setInt(key, value);

  @override
  String? getString(String key) => _preferences.getString(key);

  @override
  Future<bool> setString(String key, String value) =>
      _preferences.setString(key, value);

  @override
  Future<bool> remove(String key) => _preferences.remove(key);

  @override
  Set<String> getKeys() => _preferences.getKeys();

  @override
  Object? get(String key) => _preferences.get(key);
}
