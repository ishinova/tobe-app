# core_designsystem

Design system and UI components for the Tobe app.

## Overview

This package provides the complete design system including themes, reusable UI components, spacing constants, and visual assets. It ensures consistent design across all features while following Material Design 3 guidelines.

## Dependencies

- `core_common` - Common utilities and extensions
- `flutter` - Flutter SDK for UI components
- `flutter_adaptive_scaffold` - Responsive layout support
- `flutter_localizations` - Internationalization support
- `flutter_svg` - SVG asset rendering
- `gap` - Spacing widgets
- `intl` - Date/time formatting

## Key Features

### Theme System
- **Material 3 Theme** - Complete M3 color schemes and typography
- **Dynamic Theming** - Support for light/dark modes
- **Color Schemes** - Generated from Material Theme Builder
- **Typography** - Consistent text styles across the app

### UI Components
- **AppBar** - Customized app bars with consistent styling
- **Buttons** - Various button styles (filled, outlined, text)
- **Cards** - Tappable cards with ripple effects
- **BrandIcon** - App logo and branding elements
- **Scaffold** - Enhanced scaffold with common patterns
- **Adaptive Layouts** - Responsive design for different screen sizes

### Design Tokens
- **Spacing** - Consistent spacing values (4, 8, 12, 16, 24, 32, 48)
- **Radius** - Border radius constants
- **Elevation** - Shadow definitions
- **Duration** - Animation timing constants

### Exports
- `component.dart` - All UI components
- `theme.dart` - Theme definitions and utilities
- `space.dart` - Spacing constants and gap widgets
- `l10n.dart` - Localization for design system strings

## Usage Examples

### Theme
```dart
import 'package:core_designsystem/theme.dart';

// In your app
MaterialApp(
  theme: AppTheme.light(),
  darkTheme: AppTheme.dark(),
  themeMode: ThemeMode.system,
);

// Access theme in widgets
final colorScheme = Theme.of(context).colorScheme;
final textTheme = Theme.of(context).textTheme;
```

### Components
```dart
import 'package:core_designsystem/component.dart';

// App bar
TobeAppBar(
  title: Text('Page Title'),
  actions: [...],
);

// Tappable card
TappableCard(
  onTap: () => print('Tapped'),
  child: Padding(
    padding: EdgeInsets.all(Space.spacing16),
    child: Text('Card Content'),
  ),
);

// Brand icon
BrandIcon(size: 48);
```

### Spacing
```dart
import 'package:core_designsystem/space.dart';

// Use consistent spacing
Padding(
  padding: EdgeInsets.all(Space.spacing16),
  child: Column(
    children: [
      Text('Title'),
      Gap(Space.spacing8),
      Text('Subtitle'),
    ],
  ),
);
```

## Design Guidelines

### Colors
- Use semantic colors from `colorScheme` (primary, secondary, error, etc.)
- Avoid hardcoded colors
- Support both light and dark themes

### Typography
- Use `textTheme` styles (displayLarge, headlineMedium, bodyLarge, etc.)
- Don't create custom TextStyles unless necessary
- Maintain hierarchy with proper text styles

### Spacing
- Use predefined spacing constants
- Follow 4pt grid system
- Use `Gap` widget for consistent spacing

### Components
- Prefer design system components over custom implementations
- Extend existing components rather than creating new ones
- Maintain consistent interaction patterns

## Assets

The package includes:
- Brand icons (SVG format)
- Placeholder images
- Generated asset classes for type-safe access

## Localization

Design system strings are localized:
- Component labels
- Accessibility descriptions
- Common UI text

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Material Design 3: https://m3.material.io/
- Flutter adaptive layouts: https://flutter.dev/docs/development/ui/layout/adaptive-responsive