import 'package:core_database_drift/drift.dart';
import 'package:core_database_drift/initializer.dart';

Future<AppDatabase> initializeDatabase() async {
  return DriftDatabaseInitializer.openConnection();
}
