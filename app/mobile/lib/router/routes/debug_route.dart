part of 'package:app_mobile/router/app_router.dart';

/// デバッグ画面へのルート
// @TypedGoRoute<DebugScreenRoute>(
//   path: AppPagePath.debug,
//   routes: [
//     TypedGoRoute<DataStoreSettingsScreenRoute>(
//       path: 'dataStoreSettings',
//     ),
//   ],
// )
@TypedGoRoute<DebugScreenRoute>(path: AppPagePath.debug)
final class DebugScreenRoute extends GoRouteData {
  const DebugScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => DebugScreen(
    onTapOpenSourceLicense: () =>
        unawaited(const DataStoreSettingsScreenRoute().push(context)),
  );
}

/// データストア設定画面へのルート
@TypedGoRoute<DataStoreSettingsScreenRoute>(path: '/dataStoreSettings')
final class DataStoreSettingsScreenRoute extends GoRouteData {
  const DataStoreSettingsScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DataStoreSettingsScreen(
        onTapOpenSourceLicense: () => const LicenseRoute().go(context),
      );
}
