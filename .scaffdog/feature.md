---
name: 'feature'
description: 'Generate a new feature module'
root: './feature'
output: './'
questions:
  name:
    message: 'What is the feature name?'
    initial: 'my_feature'
---

# `{{ inputs.name | snakeCase }}/README.md`

```markdown
# {{ inputs.name | snakeCase }}

{{ inputs.name | snakeCase }} feature implementation.

## Getting Started

This feature provides ...

## Features

- [ ] Feature 1
- [ ] Feature 2

## Usage

```dart
// TODO: Add usage example
```
```

# `{{ inputs.name | snakeCase }}/pubspec.yaml`

```yaml
name: feature_{{ inputs.name | snakeCase }}
description: {{ inputs.name | snakeCase }} feature implementation.
publish_to: 'none'
version: 0.0.1

environment:
  sdk: ^3.7.0
  flutter: ^3.28.0

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  flutter_riverpod: ^2.6.1
  freezed_annotation: ^2.4.4
  go_router: ^15.0.1
  riverpod_annotation: ^2.7.1

  # Project dependencies
  core_analytics:
    path: ../../core/analytics
  core_designsystem:
    path: ../../core/designsystem
  core_domain:
    path: ../../core/domain
  core_model:
    path: ../../core/model
  core_ui:
    path: ../../core/ui

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.4.13
  custom_lint: ^0.8.0
  freezed: ^2.5.7
  riverpod_generator: ^2.6.3
  riverpod_lint: ^2.3.18

flutter:
  generate: true
```

# `{{ inputs.name | snakeCase }}/l10n.yaml`

```yaml
arb-dir: lib/src/l10n
template-arb-file: app_en.arb
output-localization-file: l10n.dart
output-dir: lib/src/gen/l10n
synthetic-package: false
nullable-getter: false
```

# `{{ inputs.name | snakeCase }}/lib/feature_{{ inputs.name | snakeCase }}.dart`

```dart
/// {{ inputs.name | snakeCase }} feature implementation.
library feature_{{ inputs.name | snakeCase }};

export 'src/ui/{{ inputs.name | snakeCase }}_page.dart';
export 'src/ui/{{ inputs.name | snakeCase }}_route.dart';
```

# `{{ inputs.name | snakeCase }}/lib/src/l10n/app_en.arb`

```json
{
  "appBarTitle": "{{ inputs.name }}",
  "@appBarTitle": {
    "description": "Title for the {{ inputs.name }} screen app bar"
  }
}
```

# `{{ inputs.name | snakeCase }}/lib/src/l10n/app_ja.arb`

```json
{
  "appBarTitle": "{{ inputs.name }}"
}
```

# `{{ inputs.name | snakeCase }}/lib/src/ui/{{ inputs.name | snakeCase }}_page.dart`

```dart
import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/l10n/l10n.dart';

/// {{ inputs.name }} feature page
class {{ inputs.name }}Page extends ConsumerWidget {
  const {{ inputs.name }}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return BrandScaffold(
      appBar: AppBar(
        title: Text(l10n.appBarTitle),
      ),
      body: const Center(
        child: Text('{{ inputs.name }} Page'),
      ),
    );
  }
}
```

# `{{ inputs.name | snakeCase }}/lib/src/ui/{{ inputs.name | snakeCase }}_route.dart`

```dart
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '{{ inputs.name | snakeCase }}_page.dart';

/// {{ inputs.name }} route
class {{ inputs.name }}Route extends GoRouteData {
  const {{ inputs.name }}Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const {{ inputs.name }}Page();
  }
}
```

# `{{ inputs.name | snakeCase }}/test/feature_{{ inputs.name | snakeCase }}_test.dart`

```dart
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    expect(1 + 1, 2);
  });
}
```

# `{{ inputs.name | snakeCase }}/.gitignore`

```
# Flutter/Dart
*.iml
*.ipr
*.iws
.idea/
.DS_Store
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub-cache/
.pub/
build/
coverage/

# Code generation
*.freezed.dart
*.g.dart
lib/src/gen/

# Platform specific
android/
ios/
linux/
macos/
windows/
web/

# Localization
*.arb.json
```

# `{{ inputs.name | snakeCase }}/.metadata`

```
# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "main"
  channel: "stable"

project_type: package
```