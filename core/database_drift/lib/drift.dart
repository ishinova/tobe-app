import 'package:core_database_drift/src/drift_database.dart';
import 'package:core_database_drift/src/quest/drift_quest_dao.dart';
import 'package:riverpod/riverpod.dart';

export 'src/drift_database.dart';

/// Drift Database
List<Override> driftDatabaseProviders({
  required AppDatabase database,
}) => <Override>[
      appDatabaseProvider.overrideWithValue(database),
      driftQuestDaoProvider,
    ];
