import 'package:core_model/config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class AppForceUpdatable extends HookConsumerWidget {
  const AppForceUpdatable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentVersion = ref.watch(
      appConfigProvider.select((c) => c.version),
    );
    final updateVersion = ref.watch(
      remoteConfigProvider.select((c) => c.updateVersion),
    );
    final showUpdate = useState(false);

    useEffect(() {
      showUpdate.value = updateVersion.forceUpdatable(currentVersion);
      return null;
    }, [currentVersion, updateVersion]);

    return showUpdate.value
        ? Center(child: Container(color: Colors.red, width: 300, height: 300))
        : const SizedBox.shrink();
  }
}

Future<void> listenFirebaseRemoteConfig(WidgetRef ref) async {
  final firebaseRemoteConfig = FirebaseRemoteConfig.instance;

  /// Support realtime update on mobile.
  firebaseRemoteConfig.onConfigUpdated.listen((event) async {
    await firebaseRemoteConfig.activate();
    ref.invalidate(remoteConfigProvider);
  });
}
