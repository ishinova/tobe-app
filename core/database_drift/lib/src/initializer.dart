import 'dart:io';

import 'package:core_database_drift/src/drift_database.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

final class DriftDatabaseInitializer {
  DriftDatabaseInitializer._();

  static AppDatabase openConnection() {
    return AppDatabase(_openConnection());
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      if (kIsWeb) {
        // We're running in a web environment
        // For now, use in-memory database for web
        return NativeDatabase.memory();
      } else {
        // Mobile/Desktop environment
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(p.join(dbFolder.path, 'tobe_drift_db.sqlite'));
        return NativeDatabase(file);
      }
    });
  }
}
