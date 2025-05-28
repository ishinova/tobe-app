# core_testing

Testing utilities and mocks for the Tobe app.

## Overview

This package provides shared testing utilities, mock implementations, and test helpers used across all packages in the monorepo. It centralizes common testing patterns and reduces boilerplate in test files.

## Dependencies

- `core_common` - Common utilities
- `core_model` - Domain models for test data
- `mocktail` - Mocking framework
- `riverpod` - For testing Riverpod providers

## Key Features

### Testing Utilities
- **Mock Factories** - Pre-configured mocks for common interfaces
- **Test Data Builders** - Factory methods for creating test data
- **Provider Testing** - Helpers for testing Riverpod providers
- **Custom Matchers** - Domain-specific test matchers
- **Test Extensions** - Convenience methods for testing

### Mock Implementations
- Repository mocks
- Data source mocks
- Use case mocks
- Service mocks

### Test Helpers
- Fake data generators
- Time manipulation utilities
- Async test helpers
- Provider overrides

### Exports
- `core_testing.dart` - All testing utilities

## Usage Examples

### Creating Test Data
```dart
import 'package:core_testing/core_testing.dart';

// Use test data builders
final testQuest = TestQuestBuilder()
  .withTitle('Test Quest')
  .withStatus(QuestStatus.active)
  .build();

final testUser = TestUserBuilder()
  .withEmail('test@example.com')
  .build();

// Generate lists
final questList = TestQuestBuilder.buildList(5);
```

### Mocking Dependencies
```dart
import 'package:core_testing/core_testing.dart';
import 'package:mocktail/mocktail.dart';

// Repository mock
class MockQuestRepository extends Mock implements QuestRepository {}

// Use case mock
class MockAddQuestUseCase extends Mock implements AddQuestUseCase {}

// Set up mocks
final mockRepo = MockQuestRepository();
when(() => mockRepo.getQuests()).thenAnswer((_) async => questList);
```

### Testing Riverpod Providers
```dart
import 'package:core_testing/core_testing.dart';

// Test with provider overrides
testWidgets('should display quests', (tester) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        questRepositoryProvider.overrideWithValue(mockRepo),
      ],
      child: MyApp(),
    ),
  );
  
  // Test UI behavior
  expect(find.text('Test Quest'), findsOneWidget);
});

// Test provider directly
test('questListProvider should return quests', () async {
  final container = ProviderContainer(
    overrides: [
      questRepositoryProvider.overrideWithValue(mockRepo),
    ],
  );
  
  final quests = await container.read(questListProvider.future);
  expect(quests, hasLength(5));
});
```

### Custom Matchers
```dart
import 'package:core_testing/core_testing.dart';

// Use custom matchers
expect(quest, isActiveQuest);
expect(result, isSuccess);
expect(error, isNetworkError);
```

### Async Testing Helpers
```dart
import 'package:core_testing/core_testing.dart';

// Test async operations
await expectLater(
  futureOperation(),
  completes,
);

// Test streams
await expectLater(
  streamController.stream,
  emitsInOrder([1, 2, 3]),
);
```

## Test Data Builders

The package provides builders for all domain models:
```dart
TestQuestBuilder()
  .withId('custom_id')
  .withTitle('Custom Title')
  .withCreatedAt(DateTime(2024, 1, 1))
  .build();
```

## Provider Testing Patterns

### Testing Notifiers
```dart
test('should update state correctly', () {
  final container = createContainer();
  final notifier = container.read(myNotifierProvider.notifier);
  
  notifier.updateState(newValue);
  
  expect(container.read(myNotifierProvider), equals(newValue));
});
```

### Testing AsyncNotifiers
```dart
test('should load data', () async {
  final container = createContainer(
    overrides: [repositoryProvider.overrideWithValue(mockRepo)],
  );
  
  await container.read(asyncNotifierProvider.future);
  
  verify(() => mockRepo.loadData()).called(1);
});
```

## Best Practices

1. **Use Builders** - Prefer test data builders over manual construction
2. **Mock at Boundaries** - Mock repositories and external services
3. **Test Behavior** - Focus on behavior, not implementation
4. **Isolate Tests** - Each test should be independent
5. **Clear Names** - Use descriptive test names

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Testing guide: [../../docs/testing.md](../../docs/testing.md)
- Mocktail documentation: https://pub.dev/packages/mocktail
- Flutter testing: https://flutter.dev/docs/testing