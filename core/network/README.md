# core_network

Network layer and API client implementation for the Tobe app.

## Overview

This package provides the network communication layer, implementing REST API clients using Dio and Retrofit. It handles all HTTP communication with the backend services, including authentication, request/response transformation, and error handling.

## Dependencies

- `core_authenticator` - For authentication token management
- `core_common` - Common utilities and extensions
- `core_model` - Domain models
- `core_network_model` - Network-specific DTOs
- `dio` - HTTP client
- `retrofit` - Type-safe REST client generator
- `freezed_annotation` - For DTO generation
- `riverpod` - State management and dependency injection

## Key Features

### Network Infrastructure
- **Dio Client** - Configured HTTP client with interceptors
- **Retrofit Integration** - Type-safe API definitions
- **Authentication** - Automatic token injection
- **Error Handling** - Centralized error transformation
- **Logging** - Request/response logging in debug mode

### Remote Data Sources
- **NewsRemoteDataSource** - News and feed API endpoints
- **MainQuestRemoteDataSource** - Quest-related API endpoints

### Network Features
- Request/Response interceptors
- Automatic retry logic
- Network connectivity handling
- JSON serialization/deserialization
- Type-safe API calls

### Exports
- `news.dart` - News-related network operations
- `quest.dart` - Quest-related network operations

## Usage Example

### API Client Setup
```dart
import 'package:core_network/src/dio_client.dart';
import 'package:riverpod/riverpod.dart';

// Dio client is configured automatically through Riverpod
final dioClient = ref.watch(dioClientProvider);

// Interceptors handle:
// - Authentication headers
// - Request/response logging
// - Error transformation
// - Retry logic
```

### News API
```dart
import 'package:core_network/news.dart';

// Access news remote data source
final newsDataSource = ref.watch(newsRemoteDataSourceProvider);

// Fetch news feed
final newsResponse = await newsDataSource.getNewsFeed(
  page: 1,
  limit: 20,
);

// Transform to domain model
final newsList = newsResponse.map((dto) => dto.toDomain()).toList();
```

### Quest API
```dart
import 'package:core_network/quest.dart';

// Access quest remote data source
final questDataSource = ref.watch(mainQuestRemoteDataSourceProvider);

// Create a new quest
final questDto = NetworkQuest(
  title: 'Morning Run',
  description: 'Run 5km',
);
final response = await questDataSource.createQuest(questDto);

// Get quest list
final quests = await questDataSource.getQuests();
```

## API Endpoints

### News Endpoints
```dart
@GET('/api/v1/news')
Future<List<NetworkNewsFeed>> getNewsFeed(
  @Query('page') int page,
  @Query('limit') int limit,
);
```

### Quest Endpoints
```dart
@GET('/api/v1/quests')
Future<List<NetworkQuest>> getQuests();

@POST('/api/v1/quests')
Future<NetworkQuest> createQuest(@Body() NetworkQuest quest);

@PUT('/api/v1/quests/{id}')
Future<NetworkQuest> updateQuest(
  @Path('id') String id,
  @Body() NetworkQuest quest,
);
```

## Error Handling

Network errors are transformed to domain errors:
```dart
try {
  final result = await apiCall();
  return result;
} on DioException catch (e) {
  throw NetworkError.fromDioError(e);
}
```

## Interceptors

1. **AuthInterceptor** - Adds authentication token
2. **LoggingInterceptor** - Logs requests/responses in debug
3. **ErrorInterceptor** - Transforms errors to domain types
4. **RetryInterceptor** - Retries failed requests

## Configuration

Network configuration through environment:
- Base URL from environment variables
- Timeout settings
- Retry policies
- Debug logging toggles

## Testing

Mock implementations for testing:
```dart
final mockNewsDataSource = MockNewsRemoteDataSource();
when(() => mockNewsDataSource.getNewsFeed(any(), any()))
    .thenAnswer((_) async => [testNewsFeed]);
```

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Network models: `core_network_model`
- Repository layer: `core_data`
- Dio documentation: https://pub.dev/packages/dio
- Retrofit documentation: https://pub.dev/packages/retrofit