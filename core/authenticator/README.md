# core_authenticator

Authentication abstraction layer for the Tobe app.

## Overview

This package provides authentication interfaces and abstractions that enable the application to handle user authentication in a platform-agnostic way. It defines the authentication contract that can be implemented by various authentication providers (Firebase Auth, custom auth, etc.).

## Dependencies

- `core_common` - Common utilities and extensions
- `core_model` - Domain models including auth-related models
- `riverpod` - State management and dependency injection
- `riverpod_annotation` - Code generation for Riverpod

## Key Features

### Authentication Interface
- Abstract authenticator interface for platform independence
- User authentication state management
- Authentication providers using Riverpod
- Support for various authentication methods

### Exports
- `Authenticator` - Main authentication interface
- `authenticatorProvider` - Riverpod provider for authentication

## Usage Example

```dart
import 'package:core_authenticator/authenticator.dart';
import 'package:riverpod/riverpod.dart';

// Access the authenticator
final authenticator = ref.watch(authenticatorProvider);

// Sign in
final result = await authenticator.signInWithEmail(
  email: 'user@example.com',
  password: 'password123',
);

// Get current user
final currentUser = await authenticator.currentUser();

// Sign out
await authenticator.signOut();
```

## Architecture

The authenticator follows the repository pattern:
- Defines authentication interfaces in this package
- Concrete implementations provided by platform-specific packages
- Features consume authentication through the abstraction
- Authentication state is managed through Riverpod

## Authentication Flow

1. App initializes authentication provider
2. Features check authentication state
3. User performs authentication action
4. State updates propagate through Riverpod
5. UI reacts to authentication changes

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Authentication models: `core_model/auth.dart`
- Firebase implementation: See `app/mobile/lib/auth/`