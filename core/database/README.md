# core_database

Database abstraction layer for the Tobe app.

## Overview

This package provides database operation interfaces and abstractions that enable the application to perform local data persistence in a platform-agnostic way. It defines data access objects (DAOs) and database contracts that can be implemented by various database solutions (Drift, Isar, SQLite, etc.).

## Dependencies

- `core_common` - Common utilities and extensions
- `core_model` - Domain models for database entities
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Database Abstractions
- **DAO Pattern** - Data Access Object interfaces for clean separation
- **Quest DAO** - Interface for quest-related database operations
- **Platform Independence** - Abstractions allow switching database implementations
- **Type Safety** - Strongly typed database operations

### Exports
- `quest_dao.dart` - Quest data access object interface

## Usage Example

```dart
import 'package:core_database/quest_dao.dart';
import 'package:riverpod/riverpod.dart';

// Access DAO through Riverpod
final questDao = ref.watch(questDaoProvider);

// Insert a quest
await questDao.insertQuest(quest);

// Query quests
final allQuests = await questDao.getAllQuests();
final activeQuests = await questDao.getActiveQuests();

// Update quest
await questDao.updateQuest(updatedQuest);

// Delete quest
await questDao.deleteQuest(questId);

// Watch quest changes
final questStream = questDao.watchQuests();
```

## DAO Pattern

Each DAO follows these principles:
1. **Single Responsibility** - One DAO per domain entity
2. **Abstract Interface** - Implementation details hidden
3. **Async Operations** - All database operations are asynchronous
4. **Stream Support** - Reactive updates for UI

## Database Operations

Common operations provided by DAOs:
- **CRUD** - Create, Read, Update, Delete
- **Batch Operations** - Efficient bulk operations
- **Queries** - Filtered and sorted data retrieval
- **Reactive Streams** - Watch data changes in real-time

## Implementation Notes

- This package defines interfaces only
- Concrete implementations are in platform-specific packages (e.g., `core_database_drift`)
- All operations return Futures or Streams
- Error handling follows Result pattern from `core_common`

## Migration Strategy

Database migrations are handled by concrete implementations:
- Version tracking
- Schema updates
- Data transformation
- Rollback support

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Concrete implementation: `core_database_drift`
- Domain models: `core_model`
- Repository layer: `core_data`
