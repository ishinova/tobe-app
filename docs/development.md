# Development Guide

## Prerequisites

### Required Tools

- **Flutter**: Latest stable version
- **Dart**: Included with Flutter
- **Mise**: For version management
- **Make**: For running build commands
- **Git**: Version control
- **IDE**: VS Code or Android Studio with Flutter plugins

### Optional Tools

- **Bun**: For running JavaScript build scripts
- **Docker**: For backend containerization
- **Firebase CLI**: For Firebase management

## Environment Setup

### 1. Clone Repository

```bash
git clone https://github.com/tatsutakeinjp/tobe-app.git
cd tobe-app
```

### 2. Install Dependencies

```bash
# Install tool versions with mise
mise install

# Bootstrap the project
make bs
```

This command will:
- Install Flutter/Dart dependencies
- Run code generation
- Set up git hooks
- Configure the development environment

### 3. Environment Configuration

Create environment files:

```bash
# Backend environment
cp app/backend/.env.example app/backend/.env

# Mobile environment
cp app/mobile/.env.example app/mobile/.env
```

## Development Workflow

### Issue-Driven Development

1. **Create Branch**
   ```bash
   git checkout -b {type}/GH-{issue-number}
   ```
   Types: `feature`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`

2. **Read Issue Requirements**
   ```bash
   gh issue view {issue-number}
   ```

3. **Create TODO List**
   Use the TodoWrite tool to track implementation tasks

4. **Implement and Test**
   Work through TODOs systematically, running tests frequently

5. **Create Pull Request**
   ```bash
   gh pr create --title "{type}: description" --body "Closes #{issue-number}"
   ```

### Code Generation

Run after modifying:
- `*.freezed.dart` files
- `*.g.dart` files
- GraphQL schemas/queries
- ARB localization files

```bash
# Generate all code
melos gen

# Generate specific types
melos gen:l10n      # Localization only
melos gen:graphql   # GraphQL only
```

### Running Applications

#### Mobile App

```bash
# Development flavor
cd app/mobile
flutter run --flavor dev

# Staging flavor
flutter run --flavor stg

# Production flavor
flutter run --flavor prod
```

#### Backend Server

```bash
cd app/backend
dart_frog dev  # Starts on http://localhost:8080
```

#### Component Catalog

```bash
cd app/catalog
flutter run  # Opens Widgetbook
```

## Code Style and Conventions

### Dart/Flutter Style

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use `melos format` to auto-format code
- Run `melos analyze` to check for issues

### File Organization

```dart
// Feature module structure
feature_name/
├── lib/
│   ├── src/
│   │   ├── ui/           # Screens and widgets
│   │   ├── provider/     # State management
│   │   └── model/        # Feature-specific models
│   └── feature_name.dart # Public API exports
├── test/
└── pubspec.yaml
```

### Naming Conventions

- **Files**: `snake_case.dart`
- **Classes**: `PascalCase`
- **Variables/Functions**: `camelCase`
- **Constants**: `lowerCamelCase` or `SCREAMING_SNAKE_CASE`
- **Packages**: `lowercase_with_underscores`

### State Management Patterns

```dart
// Use Riverpod with code generation
@riverpod
class FeatureViewModel extends _$FeatureViewModel {
  @override
  FutureOr<State> build() async {
    // Initialize state
    return State();
  }
  
  Future<void> someAction() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // Perform action
      return newState;
    });
  }
}
```

### Error Handling

```dart
// Use Result type for explicit error handling
Result<Success, Failure> doSomething() {
  try {
    // Operation
    return const Ok(Success());
  } catch (e) {
    return Err(Failure(e.toString()));
  }
}
```

## Creating New Features

### Using Feature Template

```bash
bun run plop feature
# Follow prompts to create feature structure
```

### Manual Feature Creation

1. **Create Feature Module**
   ```bash
   mkdir -p feature/new_feature/{lib/src,test}
   ```

2. **Add Dependencies**
   ```yaml
   # feature/new_feature/pubspec.yaml
   name: feature_new_feature
   dependencies:
     flutter:
       sdk: flutter
     core_domain:
       path: ../../core/domain
   ```

3. **Export Public API**
   ```dart
   // feature/new_feature/lib/feature_new_feature.dart
   export 'src/ui/new_feature_screen.dart';
   ```

4. **Add Navigation**
   ```dart
   // app/mobile/lib/router/app_router.dart
   @TypedGoRoute<NewFeatureRoute>(
     path: '/new-feature',
   )
   ```

## Testing Guidelines

### Running Tests

```bash
# All tests with coverage
melos test

# Specific package tests
cd feature/auth && flutter test

# Specific test file
flutter test test/specific_test.dart

# With coverage report
flutter test --coverage
```

### Writing Tests

```dart
// Example widget test
testWidgets('should display title', (tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: MyWidget(),
    ),
  );
  
  expect(find.text('Title'), findsOneWidget);
});

// Example unit test with mocks
test('should fetch data', () async {
  final mockRepo = MockRepository();
  when(() => mockRepo.getData()).thenAnswer((_) async => testData);
  
  final useCase = GetDataUseCase(mockRepo);
  final result = await useCase.execute();
  
  expect(result, equals(testData));
});
```

## Debugging

### Flutter Inspector

- Use Flutter DevTools for widget inspection
- Enable "Select Widget Mode" to inspect UI elements
- Check widget tree and properties

### Logging

```dart
import 'package:core_common/log.dart';

// Development logging
logger.d('Debug message');
logger.i('Info message');
logger.w('Warning message');
logger.e('Error message', error: exception, stackTrace: stack);
```

### Backend Debugging

```bash
# Run with verbose logging
cd app/backend
dart_frog dev --verbose

# Check GraphQL playground
open http://localhost:8080/graphql
```

## Code Review Checklist

Before submitting PR:

- [ ] All tests passing (`melos test`)
- [ ] Code formatted (`melos format`)
- [ ] No analyzer issues (`melos analyze`)
- [ ] TODO items completed
- [ ] Documentation updated if needed
- [ ] Commit messages follow conventional format
- [ ] PR description includes issue reference

## Common Issues and Solutions

### Build Errors

```bash
# Clean and rebuild
flutter clean
make bs
```

### Code Generation Issues

```bash
# Force regeneration
melos clean
melos gen
```

### Dependency Conflicts

```bash
# Update dependencies
melos exec -- flutter pub upgrade
```

### iOS Build Issues

```bash
cd ios
pod deintegrate
pod install
```

## Performance Optimization

### Build Performance

- Use `const` constructors where possible
- Implement `const` factories for immutable objects
- Minimize rebuilds with selective state updates

### Runtime Performance

- Lazy load features with deferred imports
- Use `ListView.builder` for long lists
- Implement pagination for data lists
- Cache network images

## VS Code Setup

### Recommended Extensions

- Flutter
- Dart
- Error Lens
- GitLens
- TODO Highlight

### Settings

```json
{
  "editor.formatOnSave": true,
  "dart.lineLength": 120,
  "[dart]": {
    "editor.rulers": [120]
  }
}
```

## Useful Commands Reference

```bash
# Development
make bs                    # Bootstrap project
melos gen                  # Run code generation
melos test                 # Run all tests
melos analyze              # Analyze code
melos format               # Format code

# Feature development
bun run plop feature       # Create new feature

# Running apps
flutter run --flavor dev   # Run mobile app
dart_frog dev             # Run backend
flutter run               # Run catalog

# Git workflow
gh issue view {number}     # View issue details
gh pr create              # Create pull request
```