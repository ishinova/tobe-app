# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Individual Preferences
- @~/.claude/ishinova-tobe-app-instructions.md

## Project Overview

This is a Flutter monorepo using Melos for package management. The project follows Clean Architecture with modular feature development.

For detailed project information, see:
- [@README.md](./README.md) - Project overview and quick start
- [@docs/architecture.md](./docs/architecture.md) - Architecture details
- [@docs/modules.md](./docs/modules.md) - Module structure and dependencies
- [@docs/development.md](./docs/development.md) - Development guide
- [@docs/testing.md](./docs/testing.md) - Testing strategy

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

## Package-Specific Documentation

Each package has its own README with detailed information:

### App Modules
- [@app/mobile/README.md](./app/mobile/README.md) - Flutter mobile app
- [@app/backend/README.md](./app/backend/README.md) - Dart Frog API server
- [@app/catalog/README.md](./app/catalog/README.md) - Component catalog

### Core Modules
- [@core/model/README.md](./core/model/README.md) - Domain models
- [@core/domain/README.md](./core/domain/README.md) - Use cases
- [@core/data/README.md](./core/data/README.md) - Repository implementations
- [@core/network/README.md](./core/network/README.md) - API clients
- [@core/database/README.md](./core/database/README.md) - Local storage
- [@core/designsystem/README.md](./core/designsystem/README.md) - UI components

### Feature Modules
- [@feature/auth/README.md](./feature/auth/README.md) - Authentication
- [@feature/home/README.md](./feature/home/README.md) - Home dashboard
- [@feature/quest/README.md](./feature/quest/README.md) - Quest management
- [@feature/feed/README.md](./feature/feed/README.md) - News feed
- [@feature/settings/README.md](./feature/settings/README.md) - Settings

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

### iOS Permissions for Packages
When adding packages that require iOS permissions (like image_picker):
1. Add permissions to all flavor Info.plist files:
   - `ios/Runner/Dev/Info.plist`
   - `ios/Runner/Stg/Info.plist`
   - `ios/Runner/Prod/Info.plist`
2. Example for image_picker:
   ```xml
   <key>NSPhotoLibraryUsageDescription</key>
   <string>This app needs access to photo library to select quest cover images.</string>
   <key>NSCameraUsageDescription</key>
   <string>This app needs access to camera to take quest cover photos.</string>
   ```

## Code Generation Dependencies

Ensure these are run when needed:
- After modifying `*.freezed.dart` files → `melos gen`
- After modifying `*.g.dart` files → `melos gen`
- After modifying `.arb` files → `melos gen:l10n`
- After modifying GraphQL files → `melos gen`

## Troubleshooting

### Analyze Warnings
- Many lint warnings are informational (prefer const, etc.)
- Focus on actual errors that prevent compilation
- Run `melos format` to auto-fix formatting issues

### Use Case Parameter Changes
When adding parameters to a use case:
1. Update the use case definition
2. Run `melos gen` to regenerate providers
3. Update ALL call sites (search across the codebase)
4. Common locations: feature screens, dialogs, quick actions