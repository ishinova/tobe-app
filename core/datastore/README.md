# core_datastore

Local preferences and key-value storage for the Tobe app.

## Overview

This package provides abstractions for storing user preferences and application settings using key-value pairs. It defines interfaces for various data stores that can be implemented using platform-specific solutions (SharedPreferences, DataStore, etc.).

## Dependencies

- `core_common` - Common utilities and extensions
- `core_model` - Domain models (Theme, Config models)
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Data Stores
- **AgreedVersionDataStore** - Tracks user agreement to terms/privacy policy versions
- **ThemeDataStore** - Persists user theme preferences
- **DataStore** - Generic key-value storage interface

### Storage Capabilities
- Type-safe storage and retrieval
- Async operations for all data access
- Platform-agnostic interfaces
- Reactive updates through Riverpod

### Exports
- `agreed_version_data_store.dart` - Version agreement tracking
- `theme_data_store.dart` - Theme preference storage
- `datastore.dart` - All datastore exports

## Usage Example

```dart
import 'package:core_datastore/datastore.dart';
import 'package:riverpod/riverpod.dart';

// Theme preferences
final themeStore = ref.watch(themeDataStoreProvider);

// Save theme preference
await themeStore.saveTheme(ThemeMode.dark);

// Get current theme
final currentTheme = await themeStore.getTheme();

// Version agreements
final versionStore = ref.watch(agreedVersionDataStoreProvider);

// Check if user agreed to current terms
final hasAgreed = await versionStore.hasAgreedToVersion("1.0.0");

// Save agreement
await versionStore.saveAgreedVersion("1.0.0");
```

## Data Store Pattern

Each data store follows these principles:
1. **Single Purpose** - One store per domain concern
2. **Type Safety** - Strongly typed getters and setters
3. **Null Safety** - Proper handling of missing values
4. **Async First** - All operations return Futures

## Common Operations

```dart
// Generic pattern for all stores
abstract class DataStore<T> {
  Future<T?> get();
  Future<void> save(T value);
  Future<void> clear();
}
```

## Storage Keys

Internal storage keys are managed by each store:
- Prefixed to avoid collisions
- Version-aware for migrations
- Documented for debugging

## Implementation Notes

- This package defines interfaces only
- Concrete implementations use platform-specific storage
- All values are serialized to primitive types
- Complex objects use JSON serialization

## Testing

Mock implementations available for testing:
```dart
final mockThemeStore = MockThemeDataStore();
when(() => mockThemeStore.getTheme()).thenAnswer((_) async => ThemeMode.light);
```

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Repository layer: `core_data` (uses datastores for caching)
- Model definitions: `core_model`
- Mobile implementation: Uses SharedPreferences