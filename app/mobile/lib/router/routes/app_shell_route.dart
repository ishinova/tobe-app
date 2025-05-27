part of 'package:app_mobile/router/app_router.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeBranch,
    questBranch,
    settingsBranch,
  ],
)
final class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(navigationShell: navigationShell);
  }
}
