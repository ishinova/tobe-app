# core_data

Repository layer implementation for the Tobe app.

## Overview

This package implements the repository pattern, providing a unified interface for data operations. It coordinates between different data sources (network, database, datastore) and implements caching strategies, data synchronization, and offline support.

## Dependencies

- `core_common` - Common utilities and extensions
- `core_database` - Local database operations
- `core_datastore` - Key-value preferences storage
- `core_model` - Domain models
- `core_network` - Remote API operations
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Repositories
- **LegalRepository** - Manages legal documents (terms, privacy policy)
- **NewsRepository** - Handles news/feed data with caching
- **QuestRepository** - Quest CRUD operations with offline support
- **UserSettingsRepository** - User preferences and settings management

### Data Flow
- Implements single source of truth pattern
- Automatic cache management
- Network-first with fallback to cache
- Optimistic updates for better UX

### Exports
- `legal.dart` - Legal repository exports
- `repository.dart` - All repository exports

## Usage Example

```dart
import 'package:core_data/repository.dart';
import 'package:riverpod/riverpod.dart';

// Access repositories through Riverpod
final questRepo = ref.watch(questRepositoryProvider);

// Fetch quests (network with cache fallback)
final quests = await questRepo.getQuests();

// Create a new quest
final newQuest = await questRepo.createQuest(
  title: "Morning Run",
  description: "Run 5km every morning",
);

// User settings
final settingsRepo = ref.watch(userSettingsRepositoryProvider);
await settingsRepo.updateTheme(ThemeMode.dark);
```

## Repository Pattern

Each repository follows this pattern:
1. **Interface Definition** - Abstract contract for data operations
2. **Implementation** - Concrete implementation with data source coordination
3. **Caching Strategy** - Smart caching based on data characteristics
4. **Error Handling** - Graceful degradation and error recovery

## Data Sources Coordination

```
Repository
    ├── Network (primary source)
    ├── Database (cache & offline)
    └── DataStore (user preferences)
```

## Caching Strategies

- **News**: Time-based cache (refresh after X minutes)
- **Quests**: Write-through cache with optimistic updates
- **Legal**: Long-term cache with version checking
- **Settings**: Immediate persistence to datastore

## Testing

The package includes comprehensive tests for:
- Repository logic
- Cache behavior
- Error scenarios
- Data source coordination

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Network layer: `core_network`
- Database layer: `core_database`
- Domain models: `core_model`