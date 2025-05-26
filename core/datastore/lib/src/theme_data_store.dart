import 'dart:async';

import 'package:core_datastore/src/data_store.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_data_store.g.dart';

@riverpod
ThemeDataStore themeDataStore(Ref ref) =>
    ThemeDataStore(dataStore: ref.watch(dataStoreProvider));

const _key = 'theme';

final class ThemeDataStore {
  ThemeDataStore({required this.dataStore})
    : _stream = StreamController<Theme>() {
    final initTheme = get();
    _stream.add(initTheme);
  }

  final DataStore dataStore;
  final StreamController<Theme> _stream;

  Stream<Theme> get stream => _stream.stream;

  Theme get() {
    final theme = dataStore.getString(_key);
    return Theme.values.firstWhere(
      (element) => element.name == theme,
      orElse: () => Theme.system,
    );
  }

  Future<bool> set(Theme theme) async {
    final isSuccess = await dataStore.setString(_key, theme.name);
    if (isSuccess) {
      _stream.add(theme);
    }
    return isSuccess;
  }

  Future<bool> reset() async {
    final isSuccess = await dataStore.remove(_key);
    if (isSuccess) {
      _stream.add(Theme.system);
    }
    return isSuccess;
  }
}
