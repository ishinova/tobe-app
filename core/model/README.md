# core_model

Domain models and data structures for the Tobe app.

## Overview

This package contains all the domain models used throughout the application. These are immutable data classes built with Freezed, representing the core entities and value objects of the business domain. The models are framework-agnostic and can be used across all layers of the application.

## Dependencies

- `core_common` - Common utilities and extensions
- `freezed_annotation` - Annotations for code generation
- `riverpod` - For model providers
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Model Categories

#### Authentication Models
- **User** - User account information
- **AuthState** - Authentication state (authenticated, unauthenticated, loading)

#### Configuration Models
- **AppConfig** - Application configuration
- **AppVersion** - Version information for update checking
- **Flavor** - Build flavor configuration (dev, stg, prod)
- **RemoteConfig** - Remote configuration values
- **UpdateVersion** - Update requirements and versioning

#### Feed Models
- **Feed** - Base feed item model
- **NewsFeed** - News-specific feed items

#### Quest Models
- **Quest** - Core quest entity with all properties
- **QuestCount** - Quest statistics (total, completed, active)
- **QuestStatus** - Quest completion status enum

#### Other Models
- **Rule** - Legal documents (terms, privacy policy)
- **Theme** - Theme preferences (light, dark, system)

### Model Features
- **Immutability** - All models are immutable with Freezed
- **Null Safety** - Proper null handling throughout
- **Serialization** - JSON serialization support where needed
- **Equality** - Value equality for all models
- **CopyWith** - Easy model updates with copyWith methods

### Exports
- `auth.dart` - Authentication-related models
- `config.dart` - Configuration and settings models
- `feed.dart` - Feed and content models
- `quest.dart` - Quest-related models
- `rule.dart` - Legal document models
- `theme.dart` - Theme preference models

## Usage Examples

### Quest Model
```dart
import 'package:core_model/quest.dart';

// Create a new quest
final quest = Quest(
  id: 'quest_123',
  title: 'Morning Run',
  description: 'Run 5km every morning',
  status: QuestStatus.active,
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
);

// Update quest using copyWith
final updatedQuest = quest.copyWith(
  status: QuestStatus.completed,
  completedAt: DateTime.now(),
);

// Check equality
print(quest == updatedQuest); // false
```

### User Model
```dart
import 'package:core_model/auth.dart';

// Create user
final user = User(
  id: 'user_123',
  email: 'user@example.com',
  displayName: 'John Doe',
  photoUrl: 'https://example.com/photo.jpg',
);

// Auth state
final authState = AuthState.authenticated(user);

// Pattern matching on auth state
authState.when(
  authenticated: (user) => print('Logged in as ${user.displayName}'),
  unauthenticated: () => print('Not logged in'),
  loading: () => print('Checking auth...'),
);
```

### Configuration Models
```dart
import 'package:core_model/config.dart';

// App version
final version = AppVersion(
  current: '1.2.0',
  minimum: '1.0.0',
  latest: '1.3.0',
);

// Check if update required
final updateRequired = version.isUpdateRequired;

// Remote config
final remoteConfig = RemoteConfig(
  featureFlags: {
    'new_ui': true,
    'beta_features': false,
  },
  minimumVersion: '1.0.0',
);
```

## Model Design Principles

1. **Domain Focused** - Models represent business concepts
2. **Immutable** - All models are immutable for predictable state
3. **Type Safe** - Strong typing with no dynamic types
4. **Serializable** - JSON support for API and storage
5. **Testable** - Easy to create and test with factories

## Freezed Benefits

- Automatic `toString()`, `==`, and `hashCode`
- `copyWith` for easy updates
- Pattern matching with `when` and `maybeWhen`
- JSON serialization with `@JsonSerializable`
- Union types for sealed classes

## Testing

Models are easy to test:
```dart
test('Quest should update status correctly', () {
  final quest = Quest(id: '1', title: 'Test', status: QuestStatus.active);
  final completed = quest.copyWith(status: QuestStatus.completed);
  
  expect(completed.status, QuestStatus.completed);
  expect(completed.id, quest.id);
  expect(completed.title, quest.title);
});
```

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Freezed documentation: https://pub.dev/packages/freezed
- Used by all other packages for type definitions
