# Architecture Documentation

## Overview

TOBE app follows Clean Architecture principles with a modular monorepo structure. The architecture emphasizes separation of concerns, testability, and scalability.

## Architecture Principles

### Clean Architecture Layers

1. **Presentation Layer** (UI)
   - Flutter widgets and screens
   - State management with Riverpod
   - Navigation with GoRouter

2. **Domain Layer** (Business Logic)
   - Use cases encapsulating business rules
   - Domain models (entities)
   - Repository interfaces

3. **Data Layer** (Infrastructure)
   - Repository implementations
   - Data sources (remote/local)
   - Data models and mappers

### Dependency Rule

Dependencies flow inward: UI → Domain → Data. Inner layers know nothing about outer layers.

```
┌─────────────────────────────────────────────┐
│              Presentation                    │
│  (Widgets, Screens, ViewModels)            │
├─────────────────────────────────────────────┤
│                Domain                        │
│  (Use Cases, Entities, Interfaces)         │
├─────────────────────────────────────────────┤
│                 Data                         │
│  (Repositories, Data Sources, Models)       │
└─────────────────────────────────────────────┘
```

## Module Architecture

### Application Modules (`app/`)

#### Mobile App (`app/mobile/`)
- Multi-flavor Flutter application (dev, stg, prod)
- Feature-based navigation structure
- Shared UI components from design system

#### Backend API (`app/backend/`)
- Dart Frog GraphQL server
- File-based routing
- Ferry for GraphQL code generation

#### Component Catalog (`app/catalog/`)
- Widgetbook for UI component documentation
- Interactive component playground
- Design system showcase

### Core Modules (`core/`)

#### Domain Module (`core/domain/`)
- Business logic use cases
- Pure Dart implementations
- Riverpod providers for dependency injection

#### Data Module (`core/data/`)
- Repository pattern implementations
- Abstraction over data sources
- Data transformation logic

#### Model Module (`core/model/`)
- Domain entities
- Immutable data classes with Freezed
- Shared across all layers

#### Network Module (`core/network/`)
- HTTP client configuration (Dio)
- GraphQL client setup
- API interceptors and error handling

#### Database Module (`core/database/`)
- Local storage with Drift
- DAO pattern for data access
- Migration management

#### Design System (`core/designsystem/`)
- Shared UI components
- Theme definitions
- Design tokens (colors, typography, spacing)

### Feature Modules (`feature/`)

Each feature is a self-contained module with:
- UI screens and widgets
- Feature-specific state management
- Localization resources
- Internal navigation

Current features:
- `auth/` - Authentication flows
- `feed/` - News feed functionality
- `quest/` - Quest management
- `home/` - Home dashboard
- `settings/` - User preferences
- `onboarding/` - First-time user experience

## Data Flow Architecture

### Unidirectional Data Flow

```
User Action → ViewModel → Use Case → Repository → Data Source
     ↑                                                    ↓
     └────────────── State Update ←──────────────────────┘
```

### State Management with Riverpod

```dart
// Example provider chain
@riverpod
class QuestListViewModel extends _$QuestListViewModel {
  @override
  FutureOr<List<Quest>> build() async {
    // Dependency injection through ref
    final useCase = ref.watch(getQuestsUseCaseProvider);
    return useCase.execute();
  }
}
```

## Backend Architecture

### GraphQL Schema Design

- Type-safe schema with Ferry
- Query/Mutation/Subscription support
- Automatic code generation for types

### Request Flow

```
Client Request → Route Handler → GraphQL Resolver → Service → Database
        ↑                                                          ↓
        └──────────────────── Response ←──────────────────────────┘
```

## Security Architecture

### Authentication
- Firebase Authentication integration
- JWT token management
- Secure credential storage

### API Security
- HTTPS enforcement
- Request authentication middleware
- Rate limiting

## Performance Architecture

### Mobile Optimization
- Lazy loading of features
- Image caching strategies
- Code splitting per feature

### Backend Optimization
- Connection pooling
- Query optimization
- Response caching

## Scalability Considerations

### Horizontal Scaling
- Stateless backend design
- Load balancer ready
- Database connection pooling

### Modular Growth
- Feature modules can be developed independently
- Shared core modules prevent duplication
- Clear contracts between modules

## Technology Stack Rationale

### Flutter
- Cross-platform development efficiency
- Native performance
- Rich ecosystem

### Dart Frog
- Same language as Flutter (Dart)
- Lightweight and performant
- Built-in middleware support

### GraphQL
- Type-safe API contracts
- Efficient data fetching
- Self-documenting

### Riverpod
- Compile-time safety
- Testability
- Fine-grained reactivity

### Melos
- Monorepo management
- Consistent tooling
- Parallel execution

## Architecture Decision Records (ADRs)

### ADR-001: Monorepo Structure
**Decision**: Use monorepo with Melos
**Rationale**: Shared code, atomic commits, unified CI/CD

### ADR-002: State Management
**Decision**: Riverpod over Provider/Bloc
**Rationale**: Better testability, compile-time safety, code generation support

### ADR-003: Backend Framework
**Decision**: Dart Frog over traditional Node.js
**Rationale**: Same language as Flutter, type safety, performance

### ADR-004: Local Database
**Decision**: Drift over Isar/Hive
**Rationale**: SQL support, type-safe queries, migration support