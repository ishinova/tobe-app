import 'dart:async';

import 'package:core_common/extension.dart';
import 'package:core_datastore/agreed_version_data_store.dart';
import 'package:core_model/rule.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'legal_repository.g.dart';

@riverpod
LegalRepository legalRepository(Ref ref) => LegalRepository(
  agreedVersionDataStore: ref.watch(agreedVersionDataStoreProvider),
);

/// 法的リポジトリ
class LegalRepository {
  LegalRepository({required AgreedVersionDataStore agreedVersionDataStore})
    : _agreedVersionDataStore = agreedVersionDataStore;

  final AgreedVersionDataStore _agreedVersionDataStore;

  /// 利用規約を取得する
  Future<Rule> fetchRule() async =>
      Rule(version: RuleVersion(1), content: 'content');

  /// 利用規約に同意したバージョンを取得する
  RuleVersion? get agreedVersion {
    return _agreedVersionDataStore.get()?.let(RuleVersion.new);
  }

  /// 同意する利用規約のバージョンを設定する
  Future<bool> setAgreeVersion({required RuleVersion version}) async {
    return _agreedVersionDataStore.set(version);
  }
}
