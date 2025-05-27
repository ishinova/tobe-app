import 'package:core_designsystem/component.dart';
import 'package:feature_debug/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// デバッグ画面
final class DebugScreen extends ConsumerWidget {
  const DebugScreen({required VoidCallback onTapOpenSourceLicense, super.key})
    : _onTapDataStoreSettings = onTapOpenSourceLicense;

  final VoidCallback _onTapDataStoreSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.debugAppBarTitle)),
      body: ListView(
        primary: true,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Text(l10n.dataStoreSettingsTitle),
            subtitle: Text(l10n.dataStoreSettingsDescription),
            onTap: _onTapDataStoreSettings,
          ),
        ],
      ),
    );
  }
}
