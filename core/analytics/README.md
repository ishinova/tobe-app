# core_analytics

Analytics abstraction layer for the Tobe app.

## Overview

This package provides a platform-agnostic analytics interface that allows the application to track user events and behaviors. It defines analytics contracts and providers that can be implemented by platform-specific analytics services.

## Dependencies

- `core_common` - Common utilities and extensions
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Analytics Events
- Quest-related analytics tracking
- Event abstraction for platform independence
- Riverpod-based analytics providers

### Exports
- `QuestAnalytics` - Analytics tracking for quest-related events

## Usage Example

```dart
import 'package:core_analytics/analytics.dart';
import 'package:riverpod/riverpod.dart';

// Access analytics provider
final analytics = ref.watch(questAnalyticsProvider);

// Track quest events
await analytics.trackQuestCreated(questId: 'quest_123');
await analytics.trackQuestCompleted(questId: 'quest_123');
```

## Architecture

This package follows the abstraction pattern where:
- Core analytics defines interfaces and contracts
- Platform-specific implementations (like `analytics_firebase`) provide concrete implementations
- Features consume analytics through the abstraction layer

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Platform-specific implementation: `core_analytics_firebase`