# core_network_model

Network data transfer objects (DTOs) for the Tobe app.

## Overview

This package contains network-specific data models used for API communication. These DTOs are separate from domain models and handle JSON serialization/deserialization for network requests and responses. The separation ensures clean architecture and allows for API changes without affecting the domain layer.

## Dependencies

- `freezed_annotation` - For immutable DTO generation
- `json_annotation` - JSON serialization annotations

## Key Features

### Network DTOs

#### News Models
- **NetworkNews** - News item DTO for API responses
- Handles JSON serialization for news feed endpoints
- Maps to/from domain `NewsFeed` model

#### Quest Models
- **NetworkMainQuest** - Quest DTO for API communication
- **CreateMainQuestRequest** - Request body for quest creation
- Handles all quest-related API payloads

### DTO Features
- **JSON Serialization** - Automatic to/from JSON conversion
- **API Contracts** - Matches backend API specifications
- **Null Handling** - Proper handling of optional fields
- **Type Safety** - Strongly typed API communication
- **Immutability** - All DTOs are immutable with Freezed

### Exports
- `news.dart` - News-related network models
- `quest.dart` - Quest-related network models

## Usage Examples

### News DTO
```dart
import 'package:core_network_model/news.dart';

// Deserialize from JSON
final json = {
  'id': '123',
  'title': 'Breaking News',
  'content': 'News content...',
  'publishedAt': '2024-01-01T00:00:00Z',
};
final newsDto = NetworkNews.fromJson(json);

// Serialize to JSON
final jsonOutput = newsDto.toJson();

// Convert to domain model
final domainNews = NewsFeed(
  id: newsDto.id,
  title: newsDto.title,
  content: newsDto.content,
  publishedAt: DateTime.parse(newsDto.publishedAt),
);
```

### Quest DTO
```dart
import 'package:core_network_model/quest.dart';

// Create quest request
final createRequest = CreateMainQuestRequest(
  title: 'Morning Run',
  description: 'Run 5km every morning',
  coverImageUrl: 'https://example.com/image.jpg',
);

// Serialize for API
final requestJson = createRequest.toJson();

// Quest response
final questJson = {
  'id': 'quest_123',
  'title': 'Morning Run',
  'description': 'Run 5km every morning',
  'status': 'active',
  'createdAt': '2024-01-01T00:00:00Z',
  'updatedAt': '2024-01-01T00:00:00Z',
};
final questDto = NetworkMainQuest.fromJson(questJson);
```

## API Contract Mapping

### JSON Field Mapping
```dart
@freezed
class NetworkMainQuest with _$NetworkMainQuest {
  const factory NetworkMainQuest({
    required String id,
    required String title,
    String? description,
    @JsonKey(name: 'cover_image_url') String? coverImageUrl,
    required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _NetworkMainQuest;
}
```

## Design Principles

1. **Separation of Concerns** - DTOs are separate from domain models
2. **API First** - DTOs match API contracts exactly
3. **Transformation Layer** - Clear mapping to/from domain models
4. **Versioning Ready** - Can support multiple API versions
5. **Minimal Dependencies** - Only serialization libraries

## JSON Serialization

All DTOs support:
- `fromJson` factory constructor
- `toJson` method
- Nested object serialization
- Custom field naming with `@JsonKey`
- Null safety in JSON handling

## Testing

DTOs are tested for:
```dart
test('should serialize/deserialize correctly', () {
  final dto = NetworkMainQuest(...);
  final json = dto.toJson();
  final decoded = NetworkMainQuest.fromJson(json);
  
  expect(decoded, equals(dto));
});
```

## API Evolution

This package allows for API versioning:
- New fields can be added as optional
- Field renaming through `@JsonKey`
- Deprecation without breaking changes
- Multiple DTO versions if needed

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- Network layer: `core_network`
- Domain models: `core_model`
- Freezed documentation: https://pub.dev/packages/freezed
- JSON Serializable: https://pub.dev/packages/json_serializable