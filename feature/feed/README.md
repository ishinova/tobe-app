# feature_feed

News and content feed feature for TOBE app.

## Overview

The feed feature provides a news and content aggregation system that keeps users informed with relevant articles, updates, and announcements. It includes a scrollable list of news items with detailed article views, supporting rich media content and real-time updates from the backend GraphQL API.

## Core Dependencies

- `core_common` - Foundation utilities and extensions
- `core_designsystem` - Shared UI components and theme
- `core_domain` - Feed and news-related use cases
- `core_model` - Feed and news models
- `core_ui` - Common UI components

## Screens and Components

### Screens
- **FeedListScreen** - Main news feed display
  - Scrollable list of news articles
  - Pull-to-refresh functionality
  - Category filtering
  - Loading states and error handling

- **FeedDetailScreen** - Individual article view
  - Full article content display
  - Rich media support (images, videos)
  - Share functionality
  - Related articles section

### Components
- **FeedList** - Reusable news list component
- **NewsFeedCardSection** - Individual news card with preview
- **FeedContent** - Article content renderer with rich text support

## Navigation and Routing

Feed feature navigation:
- List: `/feed`
- Detail: `/feed/:id`
- GoRoute: `FeedListRoute`, `FeedDetailRoute`
- Bottom navigation: Third tab in the navigation bar

## State Management

Using Riverpod with reactive patterns:
- Feed list state with pagination support
- Individual article caching
- Real-time updates via GraphQL subscriptions
- Category filter state management
- Refresh and loading states

## Localization

Comprehensive internationalization:
- Localization files: `lib/src/gen/l10n/`
- Supported languages: English (en), Japanese (ja)
- Access via: `FeatureFeedL10n.of(context)`

## Features

- **News Aggregation**: Display latest news and updates
- **Rich Content**: Support for various media types
- **Real-time Updates**: Live feed updates via GraphQL
- **Category Filtering**: Organize content by categories
- **Pull-to-Refresh**: Manual feed refresh capability
- **Infinite Scroll**: Pagination for large content lists
- **Share Integration**: Share articles via platform share sheets

## Data Flow

1. GraphQL queries fetch news from backend
2. Data transformed via repository layer
3. Cached locally for offline support
4. UI updates reactively via Riverpod

## Dependency Graph

![Dependency graph](../../docs/images/graphs/dep_graph_feature_feed.svg)

For more details on module dependencies, see [Module Structure and Dependencies](../../docs/modules.md).

## Development

To work on this feature:
1. Ensure all core dependencies are built: `melos bs`
2. Generate code for Freezed models: `melos gen`
3. Generate localization files: `melos gen:l10n`
4. Run tests: `melos test --scope="feature_feed"`
5. Test with backend GraphQL server running