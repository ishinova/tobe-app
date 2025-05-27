import 'package:core_domain/user_settings_use_case.dart';
import 'package:core_model/theme.dart';
import 'package:feature_settings/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class ThemeListTile extends ConsumerWidget {
  const ThemeListTile({required void Function() onTap, super.key})
    : _onTap = onTap;

  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final theme = ref.watch(themeStreamUseCaseProvider);

    return ListTile(
      title: Text(l10n.settingsThemeSettingTileTitle),
      subtitle: Text(
        '${l10n.settingsThemeSettingTileSubtitle}'
        '${switch (theme.valueOrNull ?? Theme.system) {
          Theme.system => l10n.settingsThemeSettingSystem,
          Theme.light => l10n.settingsThemeSettingLightMode,
          Theme.dark => l10n.settingsThemeSettingDarkMode,
        }}',
      ),
      onTap: _onTap,
    );
  }
}
