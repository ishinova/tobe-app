# feature_debug

Developer tools and debugging utilities for TOBE app.

## Overview

The debug feature provides essential development tools and utilities for testing, debugging, and monitoring the app during development. It includes data store manipulation, environment switching, feature flags, and various diagnostic tools. This feature is only available in development builds and is completely removed from production releases.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_datastore` - Direct access to app preferences
- `core_designsystem` - Shared UI components and theme
- `core_domain` - Access to all use cases for testing
- `core_model` - All data models for inspection
- `core_ui` - Common UI components

## Screens and Components

### Screens
- **DebugScreen** - Main debug menu
  - Environment information display
  - Quick actions for common debug tasks
  - Navigation to specialized debug tools
  - Feature flag toggles

- **DataStoreSettingsScreen** - Direct data store manipulation
  - View all stored preferences
  - Edit preference values
  - Clear specific or all preferences
  - Import/export data store state

### Components
- Various debug-specific UI components for:
  - Feature flag management
  - Environment switching
  - Cache clearing
  - Network request inspection

## Navigation and Routing

Debug feature access:
- Route: `/debug` (dev builds only)
- GoRoute: `DebugRoute`, `DataStoreSettingsRoute`
- Access: Usually from settings screen in dev mode
- Protected: Not accessible in production builds

## State Management

Direct access to all app states:
- Read and modify any Riverpod provider
- Inspect current state values
- Trigger state refreshes
- Simulate error conditions

## Localization

Debug-specific translations:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureDebugL10n.of(context)`

## Features

### Development Tools
- **Environment Switcher**: Quick switch between dev/staging/prod
- **Feature Flags**: Toggle experimental features
- **Force Crash**: Test crash reporting
- **Clear Cache**: Remove all cached data
- **Reset Onboarding**: Re-trigger first-time experience

### Data Inspection
- **Data Store Viewer**: Inspect all stored preferences
- **Network Logger**: View recent API calls and responses
- **Database Inspector**: Browse local database contents
- **Provider Inspector**: View current Riverpod state tree

### Testing Utilities
- **Mock Data Generator**: Create test data quickly
- **Error Simulation**: Trigger various error states
- **Performance Metrics**: View rendering performance
- **Memory Monitor**: Track memory usage

### App Information
- **Build Info**: Detailed build configuration
- **Device Info**: Hardware and OS details
- **Package Info**: Dependencies and versions
- **Feature Availability**: Check platform capabilities

## Security

- **Dev-only**: Completely excluded from release builds
- **No Production Data**: Should never access real user data
- **Local Only**: No debug data sent to external services

## Usage Guidelines

1. Use for development and QA testing only
2. Never ship debug features to production
3. Be careful with data manipulation tools
4. Document any new debug tools added

## Dependency Graph

![Dependency graph](../../docs/images/graphs/dep_graph_feature_debug.svg)

For more details on module dependencies, see [Module Structure and Dependencies](../../docs/modules.md).

## Development

To work on this feature:
1. Ensure running in debug mode
2. Build with dev flavor: `flutter run --flavor dev`
3. Access from settings → developer options
4. Add new debug tools as needed
5. Keep debug UI simple and functional