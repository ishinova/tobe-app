# feature_onboarding

User onboarding and first-time experience feature for TOBE app.

## Overview

The onboarding feature provides a smooth introduction to new users, guiding them through the app's core concepts and obtaining necessary agreements. It features engaging Lottie animations, a clean multi-step flow, and ensures users understand the app's value proposition before getting started.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_designsystem` - Shared UI components and theme
- `core_domain` - User agreement and settings use cases
- `core_model` - User and agreement models
- `core_ui` - Common UI components

## Screens and Components

### Screens
- **OnboardingScreen** - Container for the onboarding flow
  - Page navigation management
  - Progress tracking
  - Skip/completion handling

- **WelcomeScreen** - Initial welcome page
  - App branding and introduction
  - Animated illustrations using Lottie
  - Value proposition highlights

- **AgreementScreen** - Terms and privacy consent
  - Terms of service display
  - Privacy policy information
  - Consent checkboxes
  - Continue button activation

### Components
- **PageIndicator** - Visual progress indicator
  - Shows current page position
  - Allows direct navigation between pages
  - Smooth transitions

## Navigation and Routing

Onboarding flow navigation:
- Route: `/onboarding`
- GoRoute: `OnboardingRoute`
- Flow: Linear progression with ability to skip
- Completion: Redirects to `HomeRoute` or `AuthRoute`

## State Management

Using Riverpod for flow management:
- Current page index state
- Agreement acceptance state
- Completion status persistence
- Skip functionality handling

## Localization

Internationalization support:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureOnboardingL10n.of(context)`

## Assets

- **Lottie Animations**: 
  - `torch.json` - Motivational torch animation
  - `workout.json` - Activity/fitness animation
  - Located in `assets/lottie/`

## Features

- **Engaging Animations**: Lottie animations for visual appeal
- **Progressive Disclosure**: Information presented in digestible steps
- **Agreement Management**: Clear presentation of legal requirements
- **Skip Option**: Allow experienced users to bypass
- **Responsive Design**: Adapts to different screen sizes
- **Smooth Transitions**: Polished page transitions

## User Flow

1. **Welcome**: Introduction with animated visuals
2. **Features**: Highlight key app capabilities
3. **Agreement**: Present terms and obtain consent
4. **Completion**: Store agreement and redirect

## Data Persistence

- Agreement acceptance stored via `core_datastore`
- Onboarding completion flag prevents re-display
- Version tracking for re-onboarding on major updates

## Dependency Graph

Note: Dependency graph visualization pending for this feature module.

For more details on module dependencies, see [Module Structure and Dependencies](../../docs/modules.md).

## Development

To work on this feature:
1. Ensure all core dependencies are built: `melos bs`
2. Generate assets: `melos gen`
3. Generate localization files: `melos gen:l10n`
4. Test animations on various devices
5. Verify agreement persistence works correctly
