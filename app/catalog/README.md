# TOBE Component Catalog

An interactive component catalog built with Widgetbook for documenting and showcasing the TOBE design system.

## Overview

This module provides a living documentation of all UI components used in the TOBE application. Built with Widgetbook, it serves as an interactive playground where developers and designers can explore components, test different states, and ensure design consistency across the app.

## Getting Started

### Prerequisites

- Flutter SDK (see [.tool-versions](../../.tool-versions) for exact version)
- VS Code or Android Studio with Flutter extensions

### Installation

```bash
# From repository root
make bs  # Bootstrap the entire project

# Or from this directory
flutter pub get
```

### Running the Catalog

```bash
# Run on web (recommended for best experience)
flutter run -d chrome

# Run on other platforms
flutter run  # Select device from list
```

## Features

### Component Organization

The catalog organizes components into logical categories:

- **Design System Components** - Core UI building blocks
  - Brand icons
  - Cards
  - Scaffolds
  - Buttons
  - Form inputs

- **Feature Components** - Complex, feature-specific widgets
  - Quest list tiles
  - User avatars
  - Navigation elements
  - Data visualizations

### Interactive Playground

Each component in the catalog provides:

- **Live Preview** - See components rendered in real-time
- **Knobs** - Adjust properties dynamically:
  - Text content
  - Colors and themes
  - Sizes and spacing
  - States (loading, error, success)
- **Device Preview** - Test components on different screen sizes
- **Theme Switching** - Toggle between light and dark themes
- **Accessibility Testing** - Check component accessibility

## Project Structure

```
lib/
├── main.dart                    # Entry point
├── widgetbook.dart             # Widgetbook configuration
├── widgetbook.directories.g.dart # Generated directories
├── designsystem/               # Design system components
│   └── component/
│       ├── brand_icon.dart     # Brand icon showcase
│       ├── card.dart           # Card variations
│       └── scaffold.dart       # Scaffold examples
├── feature/                    # Feature-specific components
│   ├── auth/                   # Authentication components
│   ├── feed/                   # Feed components
│   ├── home/                   # Home screen components
│   ├── my/                     # Profile components
│   ├── onboarding/            # Onboarding components
│   └── quest/                  # Quest-related components
├── ui/                         # Shared UI components
│   └── component/
│       └── quest_list_tile.dart
└── l10n/                       # Localization
    └── l10n.dart
```

### Adding Components

1. **Create Component Showcase**
   ```dart
   // lib/designsystem/component/button.dart
   import 'package:widgetbook_annotation/widgetbook_annotation.dart';
   
   @UseCase(name: 'Default', type: ExampleButton)
   Widget defaultButton(BuildContext context) {
     return ExampleButton(
       text: context.knobs.string(
         label: 'Text',
         initialValue: 'Click me',
       ),
       onPressed: () {},
     );
   }
   ```

2. **Run Code Generation**
   ```bash
   flutter pub run build_runner build
   ```

3. **Component Appears in Catalog**
   - Automatically organized by directory structure
   - Accessible through the sidebar navigation

### Widgetbook Annotations

Common annotations used:

- `@UseCase` - Define a component use case
- `@WidgetbookApp` - Configure the app
- `@WidgetbookTheme` - Define custom themes

### Working with Knobs

Available knob types:

```dart
// Text input
context.knobs.string(label: 'Text', initialValue: 'Hello');

// Boolean toggle
context.knobs.boolean(label: 'Enabled', initialValue: true);

// Number slider
context.knobs.slider(
  label: 'Size',
  min: 10,
  max: 100,
  initialValue: 50,
);

// Options dropdown
context.knobs.options(
  label: 'Color',
  options: [Colors.red, Colors.blue, Colors.green],
);
```

## Development Workflow

### Component Development Process

1. **Design** - Create component in main app
2. **Document** - Add to catalog with use cases
3. **Test** - Verify different states and edge cases
4. **Review** - Share catalog link for design review
5. **Maintain** - Keep catalog updated with changes

### Best Practices

- **One file per component** - Keep showcases focused
- **Multiple use cases** - Show different states and variations
- **Meaningful names** - Use descriptive use case names
- **Interactive knobs** - Make properties adjustable
- **Real data** - Use realistic example content

### Code Generation

After adding or modifying component showcases:

```bash
# Generate Widgetbook directories
flutter pub run build_runner build --delete-conflicting-outputs
```

## Testing Components

The catalog helps with:

- **Visual Testing** - Catch UI regressions
- **Edge Cases** - Test with extreme values
- **Responsiveness** - Check different screen sizes
- **Theme Compatibility** - Ensure components work in all themes
- **Accessibility** - Verify screen reader compatibility

## Deployment

### Web Deployment

Build and deploy the catalog as a static website:

```bash
# Build for web
flutter build web

# Deploy to hosting service
# The built files are in build/web/
```

### Sharing with Team

- **Local Development** - Share localhost URL
- **CI/CD Integration** - Deploy on PR for review
- **Static Hosting** - Host on GitHub Pages, Netlify, etc.

## Integration with Design System

The catalog serves as the single source of truth for:

- Component specifications
- Design tokens (colors, typography, spacing)
- Interaction patterns
- Accessibility requirements

### Syncing with Figma

- Export design tokens from Figma
- Generate theme files
- Update catalog to reflect changes

## Troubleshooting

### Common Issues

1. **Code generation fails**
   - Clean generated files: `flutter clean`
   - Rebuild: `flutter pub run build_runner build`

2. **Components not appearing**
   - Ensure `@UseCase` annotation is present
   - Check import statements
   - Run code generation

3. **Hot reload issues**
   - Restart the app for structural changes
   - Use hot restart for annotation changes

## Related Documentation

- [Design System](../../core/designsystem/README.md)
- [Development Guide](../../docs/development.md)
- [Architecture Overview](../../docs/architecture.md)
- [Widgetbook Documentation](https://docs.widgetbook.io)
