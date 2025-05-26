# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter monorepo using Melos for package management. The project follows Clean Architecture with modular feature development.

## Essential Commands

### Initial Setup
```bash
make bs  # Bootstrap the entire project (install dependencies, generate code)
```

### Development Commands
```bash
# Code generation (required after model/API changes)
melos gen         # Run build_runner for all packages
melos gen:l10n    # Generate localization files

# Testing
melos test        # Run all tests with coverage
melos test --no-select -- --name="specific test name"  # Run specific test

# Code quality
melos analyze     # Run Dart/Flutter analysis
melos format      # Format all Dart code

# Running apps
cd app/mobile && flutter run --flavor dev  # Run mobile app (dev flavor)
cd app/backend && dart_frog dev           # Run backend locally
cd app/catalog && flutter run              # Run Widgetbook catalog
```

### Feature Development
```bash
bun run plop feature  # Generate new feature module with template
```

## Architecture Overview

### Package Structure
- **app/** - Runnable applications
  - `backend/` - Dart Frog GraphQL API server
  - `mobile/` - Flutter mobile application (multi-flavor)
  - `catalog/` - Widgetbook component catalog

- **core/** - Shared business logic and infrastructure
  - `model/` - Domain models (Freezed immutable classes)
  - `domain/` - Use cases (Riverpod providers)
  - `data/` - Repository implementations
  - `network/` - Remote data sources (REST/GraphQL)
  - `database/` - Local storage (Isar)
  - `designsystem/` - Shared UI components and theme

- **feature/** - Feature modules (auth, feed, quest, etc.)

### Key Patterns

1. **State Management**: Riverpod with code generation
   ```dart
   @riverpod
   class SomeNotifier extends _$SomeNotifier {
     @override
     FutureOr<State> build() async { ... }
   }
   ```

2. **Data Flow**: 
   - UI → UseCase (domain) → Repository (data) → DataSource (network/database)
   - Models are immutable (Freezed) and separate for each layer

3. **Dependency Injection**: All through Riverpod providers with proper scoping

### Mobile App Flavors
- **dev** - Development environment
- **stg** - Staging environment  
- **prod** - Production environment

Each flavor has its own Firebase configuration in `ios/Runner/{Flavor}/` and `android/app/src/{flavor}/`.

## Backend Development

The backend uses Dart Frog with GraphQL (Ferry):

1. **GraphQL Schema**: Define in `lib/graphql/schema.graphql`
2. **Code Generation**: Run `melos gen` after schema changes
3. **Handlers**: Located in `routes/` following file-based routing

## Common Development Tasks

### Adding a New Feature
1. Use template generator: `bun run plop feature`
2. Add navigation in `app/mobile/lib/router/`
3. Export public API in feature's main file

### Updating GraphQL
1. Modify schema in backend's `schema.graphql`
2. Add queries/mutations in `.graphql` files
3. Run `melos gen` to generate types
4. Implement resolvers in backend routes

### Working with Localization
1. Add/modify strings in `l10n/app_*.arb` files
2. Run `melos gen:l10n` to generate
3. Access via `L10n.of(context).keyName`

## Testing Strategy

- **Unit Tests**: For business logic (use cases, repositories)
- **Widget Tests**: For UI components and screens
- **Integration Tests**: For critical user flows (in `app/mobile/integration_test/`)

Mock dependencies using `mocktail` package and follow the existing test patterns.

## Code Generation Dependencies

Ensure these are run when needed:
- After modifying `*.freezed.dart` files → `melos gen`
- After modifying `*.g.dart` files → `melos gen`
- After modifying `.arb` files → `melos gen:l10n`
- After modifying GraphQL files → `melos gen`
