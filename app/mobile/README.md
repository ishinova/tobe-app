# TOBE Mobile App

The main Flutter mobile application for TOBE, supporting iOS and Android platforms with multiple build flavors.

## Overview

This module contains the runnable Flutter application that brings together all feature modules and core functionality into a cohesive mobile experience. The app follows Clean Architecture principles with Riverpod for state management and GoRouter for navigation.

## Getting Started

### Prerequisites

- Flutter SDK (see [.tool-versions](../../.tool-versions) for exact version)
- Xcode (for iOS development)
- Android Studio or VS Code with Flutter extensions
- Firebase project configured for each flavor

### Setup

```bash
# From repository root
make bs  # Bootstrap the entire project

# Or from this directory
flutter pub get
```

### Running the App

```bash
# Development flavor (default)
flutter run --flavor dev

# Staging flavor
flutter run --flavor stg

# Production flavor
flutter run --flavor prod
```

## Architecture

### Project Structure

```
lib/
├── main.dart              # Entry point with flavor configuration
├── app.dart               # Main app widget setup
├── env.dart               # Environment variables (using envied)
├── env.g.dart             # Generated environment code
├── flavor/                # Flavor-specific configurations
│   └── flavor.dart
├── router/                # Navigation setup
│   ├── app_router.dart    # GoRouter configuration
│   ├── app_router.g.dart  # Generated routes
│   ├── app_navigation_bar.dart
│   └── app_page_path.dart
├── initializer/           # App initialization logic
│   ├── app_initializer.dart
│   ├── firebase_initializer.dart
│   ├── database_initializer.dart
│   └── logger_initializer.dart
├── auth/                  # Authentication handling
│   └── firebase_authenticator.dart
├── config/                # App configuration
│   └── remote_config.dart
├── datastore/             # Local preferences
│   └── preferences_data_store.dart
├── l10n/                  # Localization
│   ├── app_ja.arb
│   ├── app_en.arb
│   └── l10n.dart
└── ui/                    # App-level UI components
    ├── app_force_updatable.dart
    └── toast.dart
```

### Build Flavors

The app supports three build flavors:

- **dev**: Development environment with debug tools enabled
- **stg**: Staging environment for testing
- **prod**: Production environment for release

Each flavor has its own:
- Firebase configuration (`GoogleService-Info.plist` / `google-services.json`)
- App bundle identifier
- API endpoints
- Feature flags

### Dependencies

This app module depends on:

**Core Modules:**
- All core modules for business logic, data access, and UI components
- See [modules documentation](../../docs/modules.md) for details

**Feature Modules:**
- `feature/auth` - Authentication flows
- `feature/home` - Main dashboard
- `feature/feed` - News and content
- `feature/quest` - Quest management
- `feature/onboarding` - First-time user experience
- `feature/settings` - User preferences
- `feature/debug` - Debug tools (non-production)

**Key External Packages:**
- `flutter_riverpod` - State management
- `go_router` - Navigation
- `firebase_*` - Firebase services
- `package_info_plus` - App version info
- `drift` - Local database

### State Management

The app uses Riverpod with code generation for state management:

```dart
@riverpod
class ExampleNotifier extends _$ExampleNotifier {
  @override
  FutureOr<State> build() async {
    // Initialize state
  }
}
```

### Navigation

Navigation is handled by GoRouter with type-safe routes:

```dart
// Navigate to a route
context.go(AppPagePath.home);

// Navigate with parameters
context.push(AppPagePath.questDetail(questId));
```

## Development

### Code Generation

After modifying models, providers, or routes:

```bash
# From repository root
melos gen

# Or from this directory
flutter pub run build_runner build --delete-conflicting-outputs
```

### Localization

1. Add/modify strings in `lib/l10n/app_*.arb` files
2. Generate localization code:
   ```bash
   melos gen:l10n
   ```
3. Use in code:
   ```dart
   L10n.of(context).welcomeMessage
   ```

### Adding Features

1. Create a new feature module using the template:
   ```bash
   bun run plop feature
   ```
2. Add the feature to `pubspec.yaml` dependencies
3. Add navigation routes in `lib/router/app_router.dart`
4. Update the navigation bar if needed

### iOS Permissions

When adding packages that require iOS permissions:

1. Add to all flavor Info.plist files:
   - `ios/Runner/Dev/Info.plist`
   - `ios/Runner/Stg/Info.plist`
   - `ios/Runner/Prod/Info.plist`

2. Example for camera permission:
   ```xml
   <key>NSCameraUsageDescription</key>
   <string>This app needs camera access to take photos</string>
   ```

## Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test
flutter test test/specific_test.dart
```

### Test Structure

```
test/
├── initializer/     # Initialization logic tests
├── router/          # Navigation tests
├── auth/            # Authentication tests
└── ui/              # UI component tests
```

## Building

### Android

```bash
# Development APK
flutter build apk --flavor dev

# Production bundle
flutter build appbundle --flavor prod
```

### iOS

```bash
# Development build
flutter build ios --flavor dev

# Production build
flutter build ios --flavor prod --release
```

## Deployment

See [deployment documentation](../../docs/deployment.md) for detailed deployment instructions.

### Release Checklist

- [ ] Update version in `pubspec.yaml`
- [ ] Run tests and ensure all pass
- [ ] Build for all flavors
- [ ] Test on physical devices
- [ ] Update release notes
- [ ] Submit to app stores

## Troubleshooting

### Common Issues

1. **Build failures after adding dependencies**
   - Run `flutter clean` and `flutter pub get`
   - For iOS: `cd ios && pod install`

2. **Code generation issues**
   - Delete `*.g.dart` and `*.freezed.dart` files
   - Run `melos gen` again

3. **Flavor-specific issues**
   - Verify Firebase configuration files are in correct directories
   - Check flavor configuration in `android/app/build.gradle` and iOS schemes

### Debug Tools

In development builds, access debug tools through the settings menu:
- Environment switcher
- Cache inspector
- Log viewer

## Related Documentation

- [Architecture Overview](../../docs/architecture.md)
- [Module Structure](../../docs/modules.md)
- [Development Guide](../../docs/development.md)
- [Testing Strategy](../../docs/testing.md)
