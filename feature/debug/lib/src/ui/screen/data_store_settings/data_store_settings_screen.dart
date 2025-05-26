import 'package:core_datastore/datastore.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_debug/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// データストア設定画面
final class DataStoreSettingsScreen extends ConsumerWidget {
  const DataStoreSettingsScreen({
    required VoidCallback onTapOpenSourceLicense,
    super.key,
  }) : _onTapDataStoreSettings = onTapOpenSourceLicense;

  // TODO: データストアの編集機能を追加したい
  // ignore: unused_field
  final VoidCallback _onTapDataStoreSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final dataStore = ref.watch(dataStoreProvider);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.dataStoreSettingsTitle)),
      body: ListView(
        primary: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          ...dataStore.getKeys().map((key) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: TobeSpace.s,
                horizontal: TobeSpace.m,
              ),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(TobeSpace.m),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(key, style: Theme.of(context).textTheme.titleSmall),
                      Text('value: ${dataStore.get(key)}'),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
