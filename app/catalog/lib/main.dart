import 'package:app_catalog/widgetbook.dart';
import 'package:core_model/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [appConfigProvider.overrideWithValue(fakeAppConfig)],
      child: const WidgetbookApp(),
    ),
  );
}
