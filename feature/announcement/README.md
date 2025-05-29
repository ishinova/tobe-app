# feature_announcement

Announcements feature module for TOBE app.

## Overview

The announcement feature provides a centralized location for app announcements, updates, and important notifications to users. It displays a list of announcements with support for different types (info, warning, update) and allows users to view detailed announcement content.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_designsystem` - Shared UI components and theme
- `core_domain` - Announcement-related use cases
- `core_model` - Announcement models
- `core_ui` - Common UI components

## Screens and Components

### Screens
- **AnnouncementListScreen** - Main announcements list display
  - Chronological list of announcements
  - Type indicators (info, warning, update)
  - Read/unread status
  - Pull-to-refresh functionality

### Components
- **AnnouncementCard** - Individual announcement display card
- **AnnouncementTypeIndicator** - Visual indicator for announcement type

## Navigation and Routing

Announcement feature navigation:
- List: `/announcements`
- GoRoute: `AnnouncementListRoute`
- Accessible from: My Page menu

## State Management

Using Riverpod for state management:
- Announcement list state with pagination
- Read/unread status tracking
- Real-time updates for new announcements

## Localization

Full internationalization support:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureAnnouncementL10n.of(context)`

## Development

To work on this feature:
1. Ensure all core dependencies are built: `melos bs`
2. Generate localization files: `melos gen:l10n`
3. Run tests: `melos test --scope="feature_announcement"`