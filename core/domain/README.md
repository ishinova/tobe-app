# core_domain

Business logic and use cases for the Tobe app.

## Overview

This package contains all the business logic of the application, implementing use cases that orchestrate data flow between repositories and the presentation layer. It follows Clean Architecture principles, ensuring business rules are independent of frameworks and external dependencies.

## Dependencies

- `core_authenticator` - Authentication abstractions
- `core_common` - Common utilities and extensions
- `core_data` - Repository interfaces and implementations
- `core_model` - Domain models
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Use Case Categories
- **Authentication** - Sign in, sign out, auth state management
- **Feed** - News feed, content streaming
- **Legal** - Terms acceptance, privacy policy management
- **Quest** - Quest CRUD operations, quest statistics
- **User Settings** - Theme preferences, app settings
- **Sync** - Data synchronization between local and remote

### Use Case Pattern
- Single responsibility per use case
- Input/Output pattern for parameters
- Stream-based for reactive data
- Future-based for one-time operations
- Error handling with Result types

### Exports
- `auth_use_case.dart` - Authentication use cases
- `feed_use_case.dart` - Feed and news use cases
- `legal.dart` - Legal document use cases
- `quest_use_case.dart` - Quest-related use cases
- `sync_use_case.dart` - Synchronization use cases
- `user_settings_use_case.dart` - Settings use cases

## Usage Examples

### Authentication
```dart
import 'package:core_domain/auth_use_case.dart';
import 'package:riverpod/riverpod.dart';

// Sign in
final signInUseCase = ref.read(signInUseCaseProvider);
final result = await signInUseCase(
  email: 'user@example.com',
  password: 'password123',
);

// Sign out
final signOutUseCase = ref.read(signOutUseCaseProvider);
await signOutUseCase();
```

### Quest Management
```dart
import 'package:core_domain/quest_use_case.dart';

// Add a new quest
final addQuestUseCase = ref.read(addQuestUseCaseProvider);
await addQuestUseCase(
  title: 'Morning Run',
  description: 'Run 5km every morning',
  coverImagePath: '/path/to/image.jpg',
);

// Stream quest list
final questListStream = ref.watch(questListStreamUseCaseProvider);
questListStream.when(
  data: (quests) => print('Quests: $quests'),
  loading: () => print('Loading...'),
  error: (err, stack) => print('Error: $err'),
);

// Get quest count
final questCountStream = ref.watch(questCountStreamUseCaseProvider);
```

### User Settings
```dart
import 'package:core_domain/user_settings_use_case.dart';

// Update theme
final updateThemeUseCase = ref.read(updateThemeUseCaseProvider);
await updateThemeUseCase(ThemeMode.dark);

// Stream theme changes
final themeStream = ref.watch(themeStreamUseCaseProvider);
```

## Use Case Design Principles

1. **Single Responsibility** - Each use case does one thing well
2. **Business Logic** - Contains application-specific business rules
3. **Framework Independence** - No Flutter/UI dependencies
4. **Testability** - Easy to unit test with mocked dependencies
5. **Reactive Streams** - Support real-time updates where appropriate

## Error Handling

Use cases handle errors gracefully:
```dart
try {
  final result = await useCase.execute();
  return Success(result);
} catch (e) {
  return Failure(AppError.from(e));
}
```

## Stream vs Future

- **Streams** - For data that changes over time (quest list, settings)
- **Futures** - For one-time operations (sign in, add quest)

## Testing

Each use case includes comprehensive tests:
```dart
test('should add quest successfully', () async {
  when(() => mockRepo.createQuest(any())).thenAnswer((_) async => quest);
  
  final result = await useCase(title: 'Test', description: 'Test');
  
  expect(result, isA<Success>());
  verify(() => mockRepo.createQuest(any())).called(1);
});
```

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Repository layer: `core_data`
- Domain models: `core_model`
- Clean Architecture: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
