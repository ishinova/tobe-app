# core_ui

Shared UI components and utilities for the Tobe app.

## Overview

This package provides reusable UI components that depend on domain models and are used across multiple feature modules. It bridges the gap between the design system and feature-specific UI, offering model-aware widgets and common UI patterns.

## Dependencies

- `core_common` - Common utilities and extensions
- `core_designsystem` - Base UI components and theme
- `core_model` - Domain models for UI components
- `flutter` - Flutter SDK
- `flutter_hooks` - React-style hooks for Flutter
- `flutter_riverpod` - State management UI integration
- `freezed_annotation` - For UI state models
- `intl` - Internationalization support

## Key Features

### UI Components
- **QuestListTile** - Reusable list item for displaying quests
- **Toast System** - Global toast/snackbar notifications
- Model-aware widgets that understand domain entities
- Stateful UI patterns with Riverpod integration

### Toast System
- Global toast notifications
- Multiple toast types (success, error, info, warning)
- Queue management for multiple toasts
- Customizable duration and actions

### Localization
- UI-specific localization strings
- Support for multiple languages
- Type-safe localization access

### Exports
- `quest_list_title.dart` - Quest list item widget
- `toast.dart` - Toast notification system
- `l10n.dart` - UI localization

## Usage Examples

### Quest List Tile
```dart
import 'package:core_ui/quest_list_title.dart';

// Display a quest in a list
ListView.builder(
  itemCount: quests.length,
  itemBuilder: (context, index) {
    final quest = quests[index];
    return QuestListTile(
      quest: quest,
      onTap: () => _navigateToQuestDetail(quest),
      onStatusChanged: (newStatus) => _updateQuestStatus(quest, newStatus),
      showProgress: true,
    );
  },
);
```

### Toast Notifications
```dart
import 'package:core_ui/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Show a toast
ref.read(toasterProvider).show(
  ToastData.success(
    message: 'Quest completed successfully!',
    action: ToastAction(
      label: 'Undo',
      onPressed: () => _undoComplete(),
    ),
  ),
);

// Different toast types
ref.read(toasterProvider).show(
  ToastData.error(message: 'Failed to save quest'),
);

ref.read(toasterProvider).show(
  ToastData.info(message: 'Syncing with server...'),
);

// Custom duration
ref.read(toasterProvider).show(
  ToastData.warning(
    message: 'No internet connection',
    duration: Duration(seconds: 5),
  ),
);
```

### Using with Hooks
```dart
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:core_ui/quest_list_title.dart';

class QuestList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final selectedQuests = useState<Set<String>>({});
    
    return ListView.builder(
      itemBuilder: (context, index) {
        return QuestListTile(
          quest: quests[index],
          selected: selectedQuests.value.contains(quests[index].id),
          onSelectionChanged: (selected) {
            if (selected) {
              selectedQuests.value.add(quests[index].id);
            } else {
              selectedQuests.value.remove(quests[index].id);
            }
          },
        );
      },
    );
  }
}
```

## Component Patterns

### Model-Aware Widgets
Components in this package understand domain models:
```dart
// QuestListTile knows how to display a Quest
QuestListTile(quest: myQuest);

// Components handle model-specific logic
// like status colors, progress calculation, etc.
```

### State Management
All stateful components use Riverpod:
```dart
// Toast system managed by Riverpod
final toaster = ref.watch(toasterProvider);

// Components can consume other providers
final theme = ref.watch(themeProvider);
```

## Toast System Architecture

The toast system uses a queue-based approach:
1. Toasts are added to a queue
2. Only one toast is shown at a time
3. Next toast appears after current one dismisses
4. Toasts can be dismissed manually or auto-dismiss

## Localization

UI-specific strings are localized:
```dart
// Access localized strings
final l10n = L10n.of(context);
Text(l10n.questCompletedMessage);
```

## Testing

Components include widget tests:
```dart
testWidgets('QuestListTile displays quest info', (tester) async {
  final quest = TestQuestBuilder().build();
  
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: QuestListTile(quest: quest),
      ),
    ),
  );
  
  expect(find.text(quest.title), findsOneWidget);
  expect(find.text(quest.description), findsOneWidget);
});
```

## Design Principles

1. **Model Awareness** - Components understand domain models
2. **Reusability** - Used across multiple features
3. **Testability** - Easy to test in isolation
4. **State Management** - Consistent Riverpod usage
5. **Accessibility** - Proper semantics and labels

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Design system: `core_designsystem`
- Domain models: `core_model`
- Feature implementations: See feature packages