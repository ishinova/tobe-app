import 'package:app_catalog/l10n/l10n.dart';
import 'package:app_catalog/widgetbook.directories.g.dart';
import 'package:core_designsystem/theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      initialRoute: '?path=feature/home/homepage/homepage',
      // Use the generated directories variable
      directories: directories,
      addons: <WidgetbookAddon>[
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme<ThemeData>(name: 'Light', data: lightTheme(null)),
            WidgetbookTheme<ThemeData>(name: 'Dark', data: darkTheme(null)),
          ],
        ),
        LocalizationAddon(
          localizationsDelegates: appLocalizationsDelegates,
          locales: appSupportedLocales.toSet().toList(),
          initialLocale: appSupportedLocales.first,
        ),
      ],
      integrations: const [],
    );
  }
}
