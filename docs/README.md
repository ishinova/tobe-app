# TOBE App Documentation

Welcome to the TOBE app documentation. This guide provides comprehensive information about the project's architecture, development workflow, and best practices.

## Table of Contents

1. [Architecture Overview](./architecture.md) - Detailed technical architecture and design decisions
2. [Development Guide](./development.md) - Development workflow, setup, and best practices
3. [Module Structure](./modules.md) - Package organization and dependencies
4. [Testing Strategy](./testing.md) - Testing approaches and guidelines
5. [Deployment Process](./deployment.md) - Build, release, and deployment procedures

## Project Overview

TOBE is a Flutter-based mobile application built using a modular monorepo architecture. The project leverages:

- **Flutter** for cross-platform mobile development
- **Dart Frog** for the GraphQL backend API
- **Melos** for monorepo package management
- **Riverpod** for state management
- **Clean Architecture** principles for maintainable code structure

## Quick Start

```bash
# Initial setup
make bs

# Run mobile app (development)
cd app/mobile && flutter run --flavor dev

# Run backend server
cd app/backend && dart_frog dev

# Run component catalog
cd app/catalog && flutter run
```

## Repository Structure

```
tobe-app/
├── app/           # Runnable applications
├── core/          # Shared business logic and infrastructure
├── feature/       # Feature modules
├── docs/          # Documentation
└── scripts/       # Build and utility scripts
```

## Key Technologies

- **Frontend**: Flutter, Riverpod, GoRouter
- **Backend**: Dart Frog, GraphQL (Ferry)
- **Database**: Drift (SQLite), Firebase
- **Testing**: Flutter Test, Mocktail
- **CI/CD**: GitHub Actions, Renovate
- **Code Generation**: build_runner, Freezed

## Contributing

Please refer to the [Development Guide](./development.md) for detailed instructions on:
- Setting up your development environment
- Code style and conventions
- Creating new features
- Submitting pull requests

## License

This project is licensed under the MIT License. See the [LICENSE](../LICENSE) file for details.