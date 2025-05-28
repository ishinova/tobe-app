# core_database_drift

Drift database implementation for the Tobe app.

## Overview

This package provides the concrete implementation of the database abstraction layer using Drift (formerly Moor). Drift is a reactive persistence library for Flutter and Dart, built on top of SQLite, offering type-safe database operations with code generation.

## Dependencies

- `core_common` - Common utilities and extensions
- `core_database` - Database abstraction interfaces
- `core_model` - Domain models
- `drift` - Database library
- `path_provider` - File system paths for database storage
- `sqlite3_flutter_libs` - SQLite native libraries
- `riverpod` - State management and dependency injection

## Key Features

### Drift Implementation
- **Type-Safe Queries** - Compile-time verified SQL queries
- **Code Generation** - Automatic generation of database code
- **Migration Support** - Built-in schema versioning and migrations
- **Reactive Streams** - Real-time updates with Stream support

### Database Components
- **Tables** - Drift table definitions (e.g., `quests.dart`)
- **DAOs** - Concrete implementations of abstract DAOs
- **Models** - Database-specific model classes
- **Extensions** - Conversion between domain and database models

### Exports
- `drift.dart` - Main database and DAO exports
- `initializer.dart` - Database initialization utilities

## Usage Example

```dart
import 'package:core_database_drift/initializer.dart';
import 'package:riverpod/riverpod.dart';

// Initialize database (usually in app startup)
await initializeDatabase();

// The Drift implementation is automatically provided
// through Riverpod when using core_database interfaces
final questDao = ref.watch(questDaoProvider);

// All operations work through the abstraction
final quests = await questDao.getAllQuests();
```

## Database Schema

### Quests Table
```dart
class Quests extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
}
```

## Migrations

Database migrations are handled automatically by Drift:
```dart
@override
int get schemaVersion => 1;

@override
MigrationStrategy get migration => MigrationStrategy(
  onCreate: (Migrator m) async {
    await m.createAll();
  },
  onUpgrade: (Migrator m, int from, int to) async {
    // Handle schema changes
  },
);
```

## Testing

The package includes:
- Unit tests for DAOs
- Integration tests for database operations
- Migration tests
- Mock database for testing

## Performance Considerations

- **Batch Operations** - Use batch inserts for better performance
- **Indexes** - Proper indexing for frequently queried columns
- **Transactions** - Group related operations in transactions
- **Background Isolates** - Heavy operations run in separate isolates

## File Storage

Database files are stored in:
- Android: `getDatabasesPath()`
- iOS: `getApplicationDocumentsDirectory()`
- Desktop: `getApplicationSupportDirectory()`

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Database abstraction: `core_database`
- Drift documentation: https://drift.simonbinder.eu/
- Repository layer: `core_data`