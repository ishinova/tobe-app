# core_analytics_firebase

Firebase Analytics implementation for the Tobe app.

## Overview

This package provides the Firebase-specific implementation of the analytics abstraction defined in `core_analytics`. It integrates Firebase Analytics SDK to track user events and behaviors in the application.

## Dependencies

- `core_analytics` - Analytics abstraction layer
- `core_common` - Common utilities and extensions
- `firebase_analytics` - Firebase Analytics SDK
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Firebase Implementation
- Concrete implementation of analytics interfaces from `core_analytics`
- Firebase Analytics event tracking
- Automatic Firebase initialization and configuration
- Quest analytics tracking with Firebase events

### Exports
- `firebaseAnalyticsProvider` - Riverpod provider for Firebase Analytics instance
- `FirebaseQuestAnalytics` - Firebase implementation of quest analytics

## Usage Example

```dart
import 'package:core_analytics_firebase/analytics_firebase.dart';
import 'package:riverpod/riverpod.dart';

// The Firebase implementation is automatically provided through Riverpod
// when this package is included in the app

// In your app initialization:
final container = ProviderContainer();

// Analytics will use Firebase automatically
final analytics = container.read(questAnalyticsProvider);
await analytics.trackQuestCreated(questId: 'quest_123');
```

## Firebase Events

The package tracks the following Firebase Analytics events:
- Quest creation events
- Quest completion events
- Quest progress updates
- User engagement metrics

## Configuration

Firebase Analytics is configured through:
- `android/app/google-services.json` for Android
- `ios/Runner/GoogleService-Info.plist` for iOS

These files are flavor-specific and managed by the mobile app.

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Analytics abstraction: `core_analytics`
- Firebase setup: See mobile app documentation