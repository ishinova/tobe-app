import 'package:core_domain/user_settings_use_case.dart';
import 'package:core_model/theme.dart';
import 'package:feature_settings/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// テーマ設定ダイアログの画面
final class ThemeSettingDialogScreen extends HookConsumerWidget {
  const ThemeSettingDialogScreen({
    required void Function() onTapPositive,
    required void Function() onTapNegative,
    super.key,
  }) : _onTapPositive = onTapPositive,
       _onTapNegative = onTapNegative;

  final VoidCallback _onTapPositive;
  final VoidCallback _onTapNegative;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final selectedTheme = useState(ref.watch(fetchThemeUseCaseProvider));

    return AlertDialog(
      title: Text(l10n.settingsThemeSettingTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...Theme.values.map(
            (e) => RadioListTile<Theme>(
              value: e,
              groupValue: selectedTheme.value,
              onChanged: (newTheme) {
                selectedTheme.value = newTheme!;
              },
              title: Text(switch (e) {
                Theme.system => l10n.settingsThemeSettingSystem,
                Theme.light => l10n.settingsThemeSettingLightMode,
                Theme.dark => l10n.settingsThemeSettingDarkMode,
              }),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _onTapNegative,
          child: Text(l10n.settingsThemeSettingNegative),
        ),
        TextButton(
          onPressed: () async {
            await ref.read(
              updateThemeUseCaseProvider(theme: selectedTheme.value),
            );
            _onTapPositive();
          },
          child: Text(l10n.settingsThemeSettingPositive),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}

extension ExpandButton on ButtonStyleButton {
  Widget get expand => SizedBox(width: double.infinity, child: this);
}
