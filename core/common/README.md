# core_common

Common utilities and shared functionality for the Tobe app.

## Overview

This package provides fundamental utilities, extensions, and convenience functions that are used throughout the application. It serves as the base dependency for most other packages, offering common functionality without any domain-specific logic.

## Dependencies

- `anyhow` - Rust-like error handling for Dart
- `collection` - Additional collection utilities
- `rust_core` - Rust-inspired functional programming utilities
- `simple_logger` - Logging functionality

## Key Features

### Extensions
- **Iterable Extensions** - Additional methods for working with collections
- **String Extensions** - Utility methods for string manipulation
- **Receiver Extensions** - Kotlin-like scope functions (let, also, takeIf, etc.)

### Utilities
- **Logging** - Centralized logging configuration and utilities
- **Error Handling** - Anyhow-based error handling patterns
- **Collection Helpers** - Enhanced collection operations
- **Functional Programming** - Rust-inspired Option and Result types

### Exports
- `anyhow.dart` - Re-exports anyhow error handling
- `collection.dart` - Re-exports collection utilities
- `extension.dart` - All custom extensions
- `log.dart` - Logging utilities
- `rust_core.dart` - Re-exports Rust-like utilities

## Usage Examples

### Extensions
```dart
import 'package:core_common/extension.dart';

// Receiver extensions
final result = someObject?.let((it) => it.process());

// String extensions
final formatted = "hello world".capitalize();

// Iterable extensions
final unique = [1, 2, 2, 3].distinct();
```

### Error Handling
```dart
import 'package:core_common/anyhow.dart';

Result<String> fetchData() {
  try {
    return Ok("data");
  } catch (e) {
    return Err(anyhow("Failed to fetch data"));
  }
}
```

### Logging
```dart
import 'package:core_common/log.dart';

final logger = Logger();
logger.info("Application started");
logger.warning("Low memory");
```

## Design Philosophy

This package follows these principles:
- No domain-specific logic
- Minimal external dependencies
- Functional programming patterns
- Type-safe error handling
- Extension methods for common operations

## Related Documentation

- See [../../docs/modules.md](../../docs/modules.md) for the complete dependency graph
- This is the most fundamental package with no internal dependencies
