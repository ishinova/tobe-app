import 'dart:async';

import 'package:core_datastore/src/data_store.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agreed_version_data_store.g.dart';

@riverpod
AgreedVersionDataStore agreedVersionDataStore(Ref ref) =>
    AgreedVersionDataStore(dataStore: ref.watch(dataStoreProvider));

const _key = 'agreed_version';

final class AgreedVersionDataStore {
  AgreedVersionDataStore({required this.dataStore})
    : _streamController = StreamController<int?>() {
    final initAgreedVersion = get();
    _streamController.add(initAgreedVersion);
  }

  final DataStore dataStore;
  final StreamController<int?> _streamController;

  Stream<int?> get stream => _streamController.stream;

  int? get() => dataStore.getInt(_key);

  Future<bool> set(int agreedVersion) async {
    final isSuccess = await dataStore.setInt(_key, agreedVersion);
    if (isSuccess) {
      _streamController.add(agreedVersion);
    }
    return isSuccess;
  }

  Future<bool> reset() async {
    final isSuccess = await dataStore.remove(_key);
    if (isSuccess) {
      _streamController.add(null);
    }
    return isSuccess;
  }
}
