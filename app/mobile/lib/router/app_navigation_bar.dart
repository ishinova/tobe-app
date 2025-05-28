import 'package:app_mobile/gen/l10n/l10n.dart';
import 'package:app_mobile/router/app_router_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// アプリで使用するボトムナビゲーションバー
///
/// home, quest, settingsの3つの画面を保有している
class AppNavigationBar extends HookWidget {
  const AppNavigationBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final tapCount = useState(0);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: l10n.bottomNavigationBarHome,
          ),
          NavigationDestination(
            icon: const Icon(Icons.explore_outlined),
            label: l10n.bottomNavigationBarQuest,
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle_outlined),
            label: l10n.bottomNavigationBarAccount,
          ),
        ],
        onDestinationSelected: (index) {
          final canPop = GoRouter.of(context).canPop();

          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );

          if (kDebugMode) {
            if (navigationShell.currentIndex == index && !canPop) {
              tapCount.value++;
              if (tapCount.value == 5) {
                tapCount.value = 0;
                // デバッグ用画面に繊維
                AppRouterHelpers.pushDebug(context);
              }
            } else {
              tapCount.value = 0;
            }
          }
        },
      ),
    );
  }
}
