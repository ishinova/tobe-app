import 'dart:async';

import 'package:core_datastore/theme_data_store.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_repository.g.dart';

@riverpod
UserSettingsRepository userSettingsRepository(Ref ref) =>
    UserSettingsRepository(themeDataStore: ref.watch(themeDataStoreProvider));

/// ユーザー設定のリポジトリ
class UserSettingsRepository {
  UserSettingsRepository({required ThemeDataStore themeDataStore})
    : _themeDataStore = themeDataStore;

  final ThemeDataStore _themeDataStore;

  Stream<Theme> get themeStream => _themeDataStore.stream;

  Theme get theme => _themeDataStore.get();

  Future<bool> setTheme({required Theme theme}) async =>
      _themeDataStore.set(theme);
}
