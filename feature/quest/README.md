# feature_quest

Quest management and tracking feature for TOBE app.

## Overview

The quest feature provides comprehensive quest management capabilities, including creating, viewing, editing, and tracking quests. It supports image attachments, priority levels, and detailed quest information. This is one of the core features that enables users to manage their personal goals and tasks effectively.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_designsystem` - Shared UI components and theme
- `core_domain` - Quest-related use cases and business logic
- `core_model` - Quest models and data structures
- `core_ui` - Common UI components (quest tiles, etc.)

## Screens and Components

### Screens
- **QuestListScreen** - Displays all quests with filtering and sorting
  - List/grid view toggle
  - Filter by status and priority
  - Search functionality
  
- **QuestDetailScreen** - Shows detailed quest information
  - Quest content display
  - Status updates
  - Edit capabilities
  
- **QuestAddScreen** - Create new quests
  - Complete quest form
  - Image picker for cover photos
  - Priority and category selection

### Components
- **QuestForm** - Reusable form component for quest creation/editing
  - Title, description, and note fields
  - Image selection and preview
  - Priority selector
  - Due date picker
  
- **QuestList** - Scrollable list of quest items
- **QuestContent** - Detailed quest information display

## Navigation and Routing

Quest feature navigation:
- List: `/quests`
- Detail: `/quests/:id`
- Add: `/quests/add`
- GoRoute: `QuestListRoute`, `QuestDetailRoute`, `QuestAddRoute`
- Bottom navigation: Second tab in the navigation bar

## State Management

Leveraging Riverpod for comprehensive state management:
- Quest list state with filtering and sorting
- Individual quest detail states
- Form state management with validation
- Image picker state handling
- Real-time updates across screens

## Localization

Complete internationalization support:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureQuestL10n.of(context)`

## Features

- **Quest Creation**: Full-featured form with all quest attributes
- **Image Support**: Attach cover images from camera or gallery
- **Priority Management**: Set and visualize quest priorities
- **Progress Tracking**: Monitor quest completion status
- **Filtering & Sorting**: Organize quests by various criteria
- **Search**: Find quests quickly with text search

## Permissions

This feature requires the following permissions for image picker:
- iOS: `NSPhotoLibraryUsageDescription`, `NSCameraUsageDescription`
- Android: Camera and storage permissions (handled by image_picker)

## Dependency Graph

![Dependency graph](../../docs/images/graphs/dep_graph_feature_quest.svg)

For more details on module dependencies, see [Module Structure and Dependencies](../../docs/modules.md).

## Development

To work on this feature:
1. Ensure all core dependencies are built: `melos bs`
2. Generate code for Freezed models: `melos gen`
3. Generate localization files: `melos gen:l10n`
4. Run tests: `melos test --scope="feature_quest"`
5. Test image picker on physical devices
