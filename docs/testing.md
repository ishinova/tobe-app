# Testing Strategy and Guidelines

## Overview

TOBE app follows a comprehensive testing strategy that includes unit tests, widget tests, and integration tests. The goal is to maintain high code coverage while ensuring tests are meaningful and maintainable.

## Testing Pyramid

```
        ┌─────┐
        │ E2E │        Few
       ┌┴─────┴┐
       │ Integ │       Some
     ┌─┴───────┴─┐
     │  Widget   │     Many
   ┌─┴───────────┴─┐
   │     Unit      │   Most
   └───────────────┘
```

## Test Categories

### Unit Tests
Test individual functions, classes, and business logic in isolation.

**Location**: `test/` directory in each module

**Focus**:
- Use cases
- Repository methods
- Data transformations
- Utility functions
- State management logic

### Widget Tests
Test UI components and their interactions.

**Location**: `test/` directory alongside widgets

**Focus**:
- Widget rendering
- User interactions
- State changes
- Navigation

### Integration Tests
Test complete user flows across multiple screens.

**Location**: `app/mobile/integration_test/`

**Focus**:
- Critical user journeys
- Cross-feature workflows
- End-to-end scenarios

## Running Tests

### All Tests
```bash
# Run all tests with coverage
melos test

# Run tests for specific package
cd feature/auth && flutter test

# Run with coverage report
flutter test --coverage

# Generate HTML coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

### Specific Tests
```bash
# Run single test file
flutter test test/specific_test.dart

# Run tests matching name
flutter test --name "should handle login"

# Run tests with verbose output
flutter test -v
```

### Integration Tests
```bash
cd app/mobile
flutter test integration_test/app_test.dart
```

## Writing Tests

### Test Structure

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mocks at top level
class MockRepository extends Mock implements Repository {}

void main() {
  // Setup before all tests
  setUpAll(() {
    // Register fallback values for mocktail
  });

  // Setup before each test
  setUp(() {
    // Initialize test dependencies
  });

  // Cleanup after each test
  tearDown(() {
    // Clean up resources
  });

  group('Feature Name', () {
    group('specific functionality', () {
      test('should do something', () {
        // Arrange
        final mock = MockRepository();
        when(() => mock.getData()).thenReturn(testData);
        
        // Act
        final result = doSomething(mock);
        
        // Assert
        expect(result, equals(expectedValue));
        verify(() => mock.getData()).called(1);
      });
    });
  });
}
```

### Unit Test Examples

#### Testing Use Cases
```dart
test('GetQuestsUseCase should return quest list', () async {
  // Arrange
  final mockRepo = MockQuestRepository();
  final testQuests = [
    Quest(id: '1', title: 'Quest 1'),
    Quest(id: '2', title: 'Quest 2'),
  ];
  
  when(() => mockRepo.getQuests())
      .thenAnswer((_) async => Ok(testQuests));
  
  final useCase = GetQuestsUseCase(mockRepo);
  
  // Act
  final result = await useCase.execute();
  
  // Assert
  expect(result.isOk(), isTrue);
  expect(result.unwrap(), equals(testQuests));
});
```

#### Testing Repositories
```dart
test('QuestRepository should handle network errors', () async {
  // Arrange
  final mockDataSource = MockQuestDataSource();
  when(() => mockDataSource.fetchQuests())
      .thenThrow(NetworkException('No connection'));
  
  final repository = QuestRepositoryImpl(mockDataSource);
  
  // Act
  final result = await repository.getQuests();
  
  // Assert
  expect(result.isErr(), isTrue);
  expect(result.unwrapErr(), isA<NetworkFailure>());
});
```

### Widget Test Examples

#### Testing Widget Rendering
```dart
testWidgets('QuestListTile displays quest information', (tester) async {
  // Arrange
  final quest = Quest(
    id: '1',
    title: 'Test Quest',
    description: 'Test Description',
    isCompleted: false,
  );
  
  // Act
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: QuestListTile(quest: quest),
      ),
    ),
  );
  
  // Assert
  expect(find.text('Test Quest'), findsOneWidget);
  expect(find.text('Test Description'), findsOneWidget);
  expect(find.byIcon(Icons.check_circle), findsNothing);
});
```

#### Testing User Interactions
```dart
testWidgets('Login button triggers authentication', (tester) async {
  // Arrange
  final mockAuthViewModel = MockAuthViewModel();
  when(() => mockAuthViewModel.state).thenReturn(
    const AuthState.unauthenticated(),
  );
  
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        authViewModelProvider.overrideWith(() => mockAuthViewModel),
      ],
      child: const MaterialApp(home: LoginScreen()),
    ),
  );
  
  // Act
  await tester.enterText(find.byType(TextField).first, 'test@example.com');
  await tester.enterText(find.byType(TextField).last, 'password');
  await tester.tap(find.text('Login'));
  await tester.pump();
  
  // Assert
  verify(() => mockAuthViewModel.login('test@example.com', 'password')).called(1);
});
```

### Testing State Management

#### Testing Riverpod Providers
```dart
test('questListProvider returns quests', () async {
  // Arrange
  final container = ProviderContainer(
    overrides: [
      questRepositoryProvider.overrideWithValue(MockQuestRepository()),
    ],
  );
  
  final mockRepo = container.read(questRepositoryProvider);
  when(() => mockRepo.getQuests())
      .thenAnswer((_) async => Ok([testQuest]));
  
  // Act
  final result = await container.read(questListProvider.future);
  
  // Assert
  expect(result, equals([testQuest]));
  
  // Cleanup
  container.dispose();
});
```

## Testing Best Practices

### 1. Test Naming
Use descriptive names that explain what is being tested:
```dart
// Good
test('should return error when network request fails', () {});
test('should update UI when user toggles theme', () {});

// Bad
test('test1', () {});
test('error case', () {});
```

### 2. Arrange-Act-Assert Pattern
Structure tests clearly:
```dart
test('should calculate total correctly', () {
  // Arrange - Set up test data and dependencies
  final items = [Item(price: 10), Item(price: 20)];
  final calculator = PriceCalculator();
  
  // Act - Execute the code being tested
  final total = calculator.calculateTotal(items);
  
  // Assert - Verify the results
  expect(total, equals(30));
});
```

### 3. Mock Dependencies
Use mocktail for creating mocks:
```dart
class MockAuthService extends Mock implements AuthService {}

// In tests
final mockAuth = MockAuthService();
when(() => mockAuth.currentUser).thenReturn(testUser);
```

### 4. Test Data Factories
Create reusable test data:
```dart
// test/fixtures/quest_fixtures.dart
class QuestFixtures {
  static Quest simple() => Quest(
    id: 'test-1',
    title: 'Test Quest',
    description: 'Test Description',
  );
  
  static Quest completed() => simple().copyWith(
    isCompleted: true,
    completedAt: DateTime.now(),
  );
  
  static List<Quest> list(int count) => List.generate(
    count,
    (i) => simple().copyWith(id: 'test-$i'),
  );
}
```

### 5. Widget Test Helpers
Create helper functions for common widget test scenarios:
```dart
// test/helpers/widget_test_helpers.dart
extension WidgetTesterX on WidgetTester {
  Future<void> pumpApp(Widget widget) async {
    await pumpWidget(
      MaterialApp(
        home: Scaffold(body: widget),
      ),
    );
  }
  
  Future<void> pumpWithProviders(
    Widget widget, {
    List<Override> overrides = const [],
  }) async {
    await pumpWidget(
      ProviderScope(
        overrides: overrides,
        child: MaterialApp(home: widget),
      ),
    );
  }
}
```

### 6. Golden Tests
Use golden tests for complex UI components:
```dart
testWidgets('QuestCard matches golden', (tester) async {
  await tester.pumpApp(
    QuestCard(quest: QuestFixtures.completed()),
  );
  
  await expectLater(
    find.byType(QuestCard),
    matchesGoldenFile('goldens/quest_card_completed.png'),
  );
});
```

## Coverage Guidelines

### Target Coverage
- Overall: > 80%
- Critical paths: > 90%
- UI components: > 70%
- Utility functions: 100%

### Viewing Coverage
```bash
# Generate coverage report
melos test

# View coverage locally
open coverage/html/index.html

# Coverage by package
melos exec -- flutter test --coverage
```

### Excluding from Coverage
```dart
// coverage:ignore-file    - Ignore entire file
// coverage:ignore-line    - Ignore single line
// coverage:ignore-start   - Start ignoring
// coverage:ignore-end     - Stop ignoring
```

## Continuous Integration

### GitHub Actions Workflow
Tests run automatically on:
- Pull requests
- Pushes to main branch
- Scheduled daily runs

### Pre-commit Hooks
```bash
# Run before committing
melos analyze
melos format
melos test --no-select
```

## Testing Tools

### Required Packages
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  mocktail: ^1.0.0
  bloc_test: ^9.0.0  # For testing blocs
  golden_toolkit: ^0.15.0  # For golden tests
```

### VS Code Extensions
- Flutter Test Runner
- Coverage Gutters
- Test Explorer UI

### Debugging Tests
```dart
// Add breakpoints in tests
debugger();

// Print debug information
debugPrint('State: $state');

// Use verbose test output
flutter test -v
```

## Common Testing Patterns

### Testing Async Code
```dart
test('async operation completes successfully', () async {
  // Use async/await
  final result = await asyncOperation();
  expect(result, isNotNull);
  
  // Or use expectLater for futures
  expectLater(
    asyncOperation(),
    completion(equals(expectedValue)),
  );
});
```

### Testing Streams
```dart
test('stream emits correct values', () {
  final stream = numberStream();
  
  expectLater(
    stream,
    emitsInOrder([1, 2, 3]),
  );
});
```

### Testing Exceptions
```dart
test('throws exception on invalid input', () {
  expect(
    () => doSomething(invalidInput),
    throwsA(isA<ArgumentError>()),
  );
});
```

## Troubleshooting

### Common Issues

1. **Tests timing out**
   ```dart
   // Increase timeout
   test('long running test', timeout: const Timeout(Duration(minutes: 2)), () {
     // Test code
   });
   ```

2. **Widget not found**
   ```dart
   // Ensure widgets are pumped
   await tester.pump(); // Trigger frame
   await tester.pumpAndSettle(); // Wait for animations
   ```

3. **Mock not working**
   ```dart
   // Register fallback values
   setUpAll(() {
     registerFallbackValue(FakeQuest());
   });
   ```