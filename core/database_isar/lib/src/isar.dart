import 'package:core_database_isar/src/quest/isar_quest_dao.dart';
import 'package:isar/isar.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

/// Isar instance
@Riverpod(keepAlive: true)
Isar isar(Ref ref) {
  throw UnimplementedError('isar');
}

/// Isar Database
List<Override> isarDatabaseProviders({required Isar isar}) => <Override>[
  isarProvider.overrideWithValue(isar),
  isarQuestDaoProvider,
];
