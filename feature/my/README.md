# feature_my

My page feature module for TOBE app.

## Overview

The my page feature serves as the user's personal dashboard, displaying profile information, quest statistics, and providing access to various account-related actions. It replaces the direct settings tab in the bottom navigation, providing a more comprehensive user experience.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_designsystem` - Shared UI components and theme
- `core_domain` - Authentication and quest-related use cases
- `core_model` - User and quest models
- `core_ui` - Common UI components

## Screens and Components

### Screens
- **MyScreen** - Main my page screen
  - User profile display
  - Quest statistics overview
  - Action menu for navigation

### Components
- **ProfileSection** - Displays user avatar, name, email, and member since date
- **QuestStatisticsSection** - Shows quest completion statistics with visual cards

## Navigation and Routing

The my page feature navigation:
- Route: `/my`
- GoRoute: `MyRoute`
- Bottom navigation: Third tab (replacing settings)
- Sub-navigation: Links to settings, edit profile, help

## State Management

Using Riverpod for state management:
- User authentication state from `core_domain`
- Quest statistics from quest repositories
- Real-time updates for user data

## Localization

Full internationalization support:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureMyL10n.of(context)`

## Features

- **User Profile Display**: Shows avatar, name, email, and membership duration
- **Quest Statistics**: Visual representation of completed, active, and total quests
- **Action Menu**: Quick access to edit profile, settings, help, and logout
- **Responsive Design**: Adapts to different screen sizes
- **Dark Mode Support**: Follows system theme preferences

## Development

To work on this feature:
1. Ensure all core dependencies are built: `melos bs`
2. Generate localization files: `melos gen:l10n`
3. Run tests: `melos test --scope="feature_my"`