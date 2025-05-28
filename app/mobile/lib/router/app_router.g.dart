// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $authRoute,
      $debugScreenRoute,
      $dataStoreSettingsScreenRoute,
      $onboardingRoute,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'feeds',
                  parentNavigatorKey: FeedListRoute.$parentNavigatorKey,
                  factory: $FeedListRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: ':feedId',
                      parentNavigatorKey: FeedDetailRoute.$parentNavigatorKey,
                      factory: $FeedDetailRouteExtension._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'quickAddQuest',
                  parentNavigatorKey:
                      QuickAddQuestDialogRoute.$parentNavigatorKey,
                  factory: $QuickAddQuestDialogRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: QuestBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/quests',
              factory: $QuestListRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'add',
                  factory: $QuestAddRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: ':questId',
                  factory: $QuestDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'theme',
                  parentNavigatorKey:
                      ThemeSettingDialogRoute.$parentNavigatorKey,
                  factory: $ThemeSettingDialogRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'license',
                  parentNavigatorKey: LicenseRoute.$parentNavigatorKey,
                  factory: $LicenseRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeedListRouteExtension on FeedListRoute {
  static FeedListRoute _fromState(GoRouterState state) => const FeedListRoute();

  String get location => GoRouteData.$location(
        '/home/feeds',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeedDetailRouteExtension on FeedDetailRoute {
  static FeedDetailRoute _fromState(GoRouterState state) => FeedDetailRoute(
        feedId: state.pathParameters['feedId']!,
      );

  String get location => GoRouteData.$location(
        '/home/feeds/${Uri.encodeComponent(feedId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuickAddQuestDialogRouteExtension on QuickAddQuestDialogRoute {
  static QuickAddQuestDialogRoute _fromState(GoRouterState state) =>
      const QuickAddQuestDialogRoute();

  String get location => GoRouteData.$location(
        '/home/quickAddQuest',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuestListRouteExtension on QuestListRoute {
  static QuestListRoute _fromState(GoRouterState state) =>
      const QuestListRoute();

  String get location => GoRouteData.$location(
        '/quests',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuestAddRouteExtension on QuestAddRoute {
  static QuestAddRoute _fromState(GoRouterState state) => const QuestAddRoute();

  String get location => GoRouteData.$location(
        '/quests/add',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuestDetailRouteExtension on QuestDetailRoute {
  static QuestDetailRoute _fromState(GoRouterState state) => QuestDetailRoute(
        questId: state.pathParameters['questId']!,
      );

  String get location => GoRouteData.$location(
        '/quests/${Uri.encodeComponent(questId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThemeSettingDialogRouteExtension on ThemeSettingDialogRoute {
  static ThemeSettingDialogRoute _fromState(GoRouterState state) =>
      const ThemeSettingDialogRoute();

  String get location => GoRouteData.$location(
        '/settings/theme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/settings/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authRoute => GoRouteData.$route(
      path: '/auth',
      factory: $AuthRouteExtension._fromState,
    );

extension $AuthRouteExtension on AuthRoute {
  static AuthRoute _fromState(GoRouterState state) => const AuthRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $debugScreenRoute => GoRouteData.$route(
      path: '/debug',
      factory: $DebugScreenRouteExtension._fromState,
    );

extension $DebugScreenRouteExtension on DebugScreenRoute {
  static DebugScreenRoute _fromState(GoRouterState state) =>
      const DebugScreenRoute();

  String get location => GoRouteData.$location(
        '/debug',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dataStoreSettingsScreenRoute => GoRouteData.$route(
      path: '/dataStoreSettings',
      factory: $DataStoreSettingsScreenRouteExtension._fromState,
    );

extension $DataStoreSettingsScreenRouteExtension
    on DataStoreSettingsScreenRoute {
  static DataStoreSettingsScreenRoute _fromState(GoRouterState state) =>
      const DataStoreSettingsScreenRoute();

  String get location => GoRouteData.$location(
        '/dataStoreSettings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'1080abdf14ba8db6d25b56eb611d1f4ff955338b';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
