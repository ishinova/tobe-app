# TOBE Backend API

[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

A GraphQL API server built with Dart Frog, providing backend services for the TOBE mobile application.

## Overview

This module contains the backend API server that powers the TOBE ecosystem. Built with Dart Frog and GraphQL (Ferry), it provides a type-safe, performant API for client applications. The server follows a file-based routing pattern with GraphQL resolvers.

## Getting Started

### Prerequisites

- Dart SDK (see [.tool-versions](../../.tool-versions) for exact version)
- Dart Frog CLI installed globally

### Installation

```bash
# Install Dart Frog CLI globally
dart pub global activate dart_frog_cli

# Install dependencies
dart pub get

# Generate GraphQL code
dart run build_runner build
```

### Running the Server

```bash
# Start development server with hot reload
dart_frog dev

# The server will be available at http://localhost:8080
```

### Testing the API

Use the included HTTP client files for testing:

```bash
# Test endpoints with REST Client extension in VS Code
# Open all_successful.http and run requests
```

## Architecture

### Project Structure

```
lib/
├── config/
│   └── environment.dart         # Environment configuration
├── graphql/
│   ├── __generated__/          # Generated GraphQL types
│   ├── news/                   # News-related queries
│   │   └── GetNews.graphql
│   ├── quest/                  # Quest-related operations
│   │   ├── GetQuests.graphql
│   │   └── InsertMainQuest.graphql
│   ├── schema.graphql          # GraphQL schema definition
│   └── serializer/             # Custom serializers
│       └── timestamptz_serializer.dart
├── handler/                    # Request handlers
├── news/                       # News data layer
│   ├── ferry_network_news_transformer.dart
│   └── ferry_news_remote_data_source.dart
└── quests/                     # Quest data layer
    ├── ferry_main_quest_remote_data_source.dart
    └── ferry_network_main_quest_transformer.dart

routes/
├── index.dart                  # Root endpoint
└── v1/
    ├── _middleware.dart        # API middleware
    ├── news/
    │   ├── _middleware.dart    # News-specific middleware
    │   └── index.dart          # News endpoints
    └── quests/
        ├── _middleware.dart    # Quest-specific middleware
        └── index.dart          # Quest endpoints
```

### GraphQL Schema

The API uses a strongly-typed GraphQL schema defined in `lib/graphql/schema.graphql`. Key types include:

- **Quest**: Main quest entity with properties like title, description, status
- **News**: News articles and updates
- **User**: User information and preferences

### Request Flow

1. Client sends GraphQL request to `/v1/graphql`
2. Middleware handles authentication and validation
3. Route handler processes the request
4. GraphQL resolver executes the operation
5. Data transformer formats the response
6. Response sent back to client

## API Endpoints

### REST Endpoints

- `GET /` - Health check endpoint
- `GET /v1/news` - News feed endpoint
- `GET /v1/quests` - Quest list endpoint
- `POST /v1/quests` - Create new quest

### GraphQL Endpoint

- `POST /v1/graphql` - Main GraphQL endpoint

Example GraphQL query:
```graphql
query GetQuests {
  quests {
    id
    title
    description
    status
    createdAt
  }
}
```

## Development

### Code Generation

After modifying GraphQL schema or queries:

```bash
# Generate Ferry types and serializers
dart run build_runner build --delete-conflicting-outputs
```

### Adding New Features

1. **Define GraphQL Schema**
   - Add types to `lib/graphql/schema.graphql`
   - Create query/mutation files in appropriate directories

2. **Create Route Handler**
   - Add new route file in `routes/v1/`
   - Implement request handling logic

3. **Implement Data Layer**
   - Create remote data source in `lib/`
   - Add data transformer for response formatting

4. **Generate Code**
   - Run code generation for type safety

### Middleware

Custom middleware can be added for:
- Authentication verification
- Request logging
- Error handling
- Rate limiting

Example middleware in `routes/v1/_middleware.dart`:
```dart
Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(authProvider());
}
```

## Configuration

### Environment Variables

The server uses environment configuration from `lib/config/environment.dart`:

- `PORT` - Server port (default: 8080)
- `DATABASE_URL` - Database connection string
- `JWT_SECRET` - Secret for JWT tokens

### Database Connection

The backend connects to a PostgreSQL database for persistent storage. Configure the connection in the environment settings.

## Testing

```bash
# Run all tests
dart test

# Run with coverage
dart test --coverage

# Run specific test
dart test test/routes/index_test.dart
```

### Test Structure

```
test/
└── routes/
    └── index_test.dart    # Route handler tests
```

## Deployment

### Docker

Build and run with Docker:

```bash
# Build Docker image
docker build -t tobe-backend .

# Run container
docker run -p 8080:8080 tobe-backend
```

### Production Build

```bash
# Create production build
dart_frog build

# Run production server
dart build/bin/server.dart
```

## Performance Optimization

- **Connection Pooling**: Database connections are pooled for efficiency
- **Query Optimization**: GraphQL queries are optimized to prevent N+1 problems
- **Caching**: Responses are cached where appropriate
- **Compression**: Gzip compression enabled for responses

## Security

- **Authentication**: JWT-based authentication
- **Authorization**: Role-based access control
- **Input Validation**: All inputs are validated
- **SQL Injection Prevention**: Parameterized queries used

## Monitoring

- Request logging with correlation IDs
- Error tracking and reporting
- Performance metrics collection
- Health check endpoints

## API Documentation

GraphQL schema is self-documenting. Access the GraphQL playground in development mode at:
```
http://localhost:8080/graphql
```

## Troubleshooting

### Common Issues

1. **Port already in use**
   ```bash
   # Find and kill process using port 8080
   lsof -i :8080
   kill -9 <PID>
   ```

2. **GraphQL code generation fails**
   - Ensure schema.graphql is valid
   - Check for syntax errors in .graphql files
   - Clean generated files and retry

3. **Database connection errors**
   - Verify DATABASE_URL is correctly set
   - Check database server is running
   - Ensure network connectivity

## Related Documentation

- [Architecture Overview](../../docs/architecture.md)
- [Development Guide](../../docs/development.md)
- [Deployment Guide](../../docs/deployment.md)
- [Dart Frog Documentation](https://dartfrog.vgv.dev)