[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)
[![renovate](https://img.shields.io/badge/maintaied%20with-renovate-blue?logo=renovatebot)](https://app.renovatebot.com/dashboard)
[![Maintainability](https://api.codeclimate.com/v1/badges/d91f882c23e2b0143794/maintainability)](https://codeclimate.com/github/ishinova/tobe-app/maintainability)

# tobe-app

Embark on the quest to be your true self.

## Project Overview

TOBE is a Flutter-based mobile application built using a modular monorepo architecture. The project leverages:

- **Flutter** for cross-platform mobile development
- **Dart Frog** for the GraphQL backend API
- **Melos** for monorepo package management
- **Riverpod** for state management
- **Clean Architecture** principles for maintainable code structure

## Features

TBD

### Screenshots

TBD

## Quick Start

After git clone, run the following command:

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

## Documentation

- [Architecture Overview](./architecture.md) - Detailed technical architecture and design decisions
- [Development Guide](./development.md) - Development workflow, setup, and best practices
- [Module Structure](./modules.md) - Package organization and dependencies
- [Testing Strategy](./testing.md) - Testing approaches and guidelines
- [Deployment Process](./deployment.md) - Build, release, and deployment procedures

## Development Environment

Please refer to the [Development Guide](./development.md) for detailed setup instructions.

## Architecture

The project follows Clean Architecture principles with a modular monorepo structure. For detailed architecture information, see [Architecture Overview](./architecture.md).

### Key Technologies

- **Frontend**: Flutter, Riverpod, GoRouter
- **Backend**: Dart Frog, GraphQL (Ferry)
- **Database**: Drift (SQLite), Firebase
- **Testing**: Flutter Test, Mocktail
- **CI/CD**: GitHub Actions, Renovate
- **Code Generation**: build_runner, Freezed
- **Tools**: [Melos](https://melos.invertase.dev) for monorepo management

## Repository Structure

```text
tobe-app/
├── app/           # Runnable applications
│   ├── backend/   # Dart Frog GraphQL API server
│   ├── mobile/    # Flutter mobile application
│   └── catalog/   # Widgetbook component catalog
├── core/          # Shared business logic and infrastructure
│   ├── model/     # Domain models
│   ├── domain/    # Use cases
│   ├── data/      # Repository implementations
│   └── ...        # Other core modules
├── feature/       # Feature modules
│   ├── auth/      # Authentication feature
│   ├── home/      # Home screen feature
│   └── ...        # Other features
├── docs/          # Documentation
└── scripts/       # Build and utility scripts
```

## Build

For detailed build instructions, see [Deployment Process](./deployment.md).

## Testing

```bash
# Run all tests
melos test

# Run tests with coverage
melos test -- --coverage
```

For comprehensive testing guidelines, see [Testing Strategy](./testing.md).

## Contributing

Please refer to the [Development Guide](./development.md) for:
- Setting up your development environment
- Code style and conventions
- Creating new features
- Submitting pull requests

## Contributors

Thanks to our wonderful contributors!

<a href="https://github.com/ishinova/tobe-app/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ishinova/tobe-app"  alt="contributors"/>
</a>

## Repo Activity

![Repobeats](https://repobeats.axiom.co/api/embed/78f120a5545839ba681a91e0c4ebfa8f8d093c83.svg "Repobeats analytics image")

## License

tobe app is distributed under the terms of the MIT License. See the [license](../LICENSE) for more
information.
