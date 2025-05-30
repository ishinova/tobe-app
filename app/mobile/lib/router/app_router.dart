import 'package:app_mobile/router/app_navigation_bar.dart';
import 'package:app_mobile/router/app_navigation_key.dart';
import 'package:app_mobile/router/app_page_path.dart';
import 'package:app_mobile/router/app_routes.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/legal.dart';
import 'package:core_model/auth.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_debug/feature_debug.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_my/feature_my.dart';
import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

/// ルートナビゲーターのキー
final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(Ref ref) {
  final authenticator = ref.watch(authenticatorProvider);

  return GoRouter(
    initialLocation: AppPagePath.home,
    navigatorKey: rootNavigatorKey,
    routes: _routes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) async {
      // 認証が必要なページではない
      if (!authorizedPaths.any((path) => path == state.matchedLocation)) {
        return null;
      }

      // 未同意の場合はオンボーディング画面にリダイレクト
      final agreedRuleVersion = ref.read(fetchAgreedRuleVersionUseCaseProvider);
      if (agreedRuleVersion == null) {
        return AppPagePath.onboarding;
      }

      switch (authenticator.authState) {
        case AuthStateUnauthenticated():
          return AppPagePath.auth;
        case AuthStateAuthenticated():
          return null;
      }
    },
  );
}

/// Routes definition without go_router_builder
final List<RouteBase> _routes = [
  // Simple routes
  GoRoute(
    path: AppPagePath.auth,
    name: AppRoutes.auth,
    builder: (context, state) =>
        AuthScreen(onLoginSuccess: () => context.goNamed(AppRoutes.home)),
  ),
  GoRoute(
    path: AppPagePath.onboarding,
    name: AppRoutes.onboarding,
    builder: (context, state) => OnboardingScreen(
      onPopInvoked: () => context.pop(),
      onAgreeAndContinue: () => context.goNamed(AppRoutes.home),
    ),
  ),
  if (kDebugMode) ...[
    GoRoute(
      path: AppPagePath.debug,
      name: AppRoutes.debug,
      builder: (context, state) => DebugScreen(
        onTapOpenSourceLicense: () => showLicensePage(context: context),
      ),
    ),
    GoRoute(
      path: AppPagePath.dataStoreSettings,
      name: AppRoutes.dataStoreSettings,
      builder: (context, state) => DataStoreSettingsScreen(
        onTapOpenSourceLicense: () => showLicensePage(context: context),
      ),
    ),
  ],
  // Shell route for bottom navigation
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: rootNavigatorKey,
    branches: [
      // Home branch
      StatefulShellBranch(
        navigatorKey: homeNavigatorKey,
        routes: [
          GoRoute(
            path: AppPagePath.home,
            name: AppRoutes.home,
            pageBuilder: (context, state) => NoTransitionPage(
              child: HomeScreen(
                onTapNotification: () => context.goNamed(AppRoutes.feedList),
                onQuickAddButtonPressed: () =>
                    context.goNamed(AppRoutes.quickAddQuest),
                onTapQuestListItem: (quest) => context.goNamed(
                  AppRoutes.questDetail,
                  pathParameters: {'questId': quest.id},
                ),
                onMoreButtonPressed: () => context.goNamed(AppRoutes.questList),
              ),
            ),
            routes: [
              GoRoute(
                path: 'feeds',
                name: AppRoutes.feedList,
                builder: (context, state) => FeedListScreen(
                  onTapFeedListItem: (feed) => context.goNamed(
                    AppRoutes.feedDetail,
                    pathParameters: {'feedId': feed.id},
                  ),
                ),
                routes: [
                  GoRoute(
                    path: ':feedId',
                    name: AppRoutes.feedDetail,
                    builder: (context, state) {
                      final feedId = state.pathParameters['feedId']!;
                      return FeedDetailScreen(id: feedId);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'quickAddQuest',
                name: AppRoutes.quickAddQuest,
                pageBuilder: (context, state) => MaterialPage(
                  fullscreenDialog: true,
                  child: QuickAddQuestDialog(onClose: () => context.pop()),
                ),
              ),
            ],
          ),
        ],
      ),
      // Quest branch
      StatefulShellBranch(
        navigatorKey: questNavigatorKey,
        routes: [
          GoRoute(
            path: AppPagePath.quests,
            name: AppRoutes.questList,
            pageBuilder: (context, state) => NoTransitionPage(
              child: QuestListScreen(
                onTapQuestListItem: (quest) => context.goNamed(
                  AppRoutes.questDetail,
                  pathParameters: {'questId': quest.id},
                ),
                onTapQuestAddButton: () => context.goNamed(AppRoutes.questAdd),
              ),
            ),
            routes: [
              GoRoute(
                path: 'add',
                name: AppRoutes.questAdd,
                builder: (context, state) =>
                    QuestAddScreen(onAddQuestCompleted: () => context.pop()),
              ),
              GoRoute(
                path: ':questId',
                name: AppRoutes.questDetail,
                builder: (context, state) {
                  final questId = state.pathParameters['questId']!;
                  return QuestDetailScreen(id: questId);
                },
              ),
            ],
          ),
        ],
      ),
      // My page branch
      StatefulShellBranch(
        navigatorKey: myNavigatorKey,
        routes: [
          GoRoute(
            path: AppPagePath.my,
            name: AppRoutes.my,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: MyScreen()),
            routes: [
              GoRoute(
                path: 'announcements',
                name: AppRoutes.announcements,
                builder: (context, state) => const AnnouncementListScreen(),
              ),
              GoRoute(
                path: 'settings',
                name: AppRoutes.settings,
                builder: (context, state) => SettingsScreen(
                  onTapThemeSetting: () =>
                      context.goNamed(AppRoutes.themeSetting),
                  onTapOpenSourceLicense: () =>
                      showLicensePage(context: context),
                  onSignOutSuccess: () => context.goNamed(AppRoutes.auth),
                ),
                routes: [
                  GoRoute(
                    path: 'theme',
                    name: AppRoutes.themeSetting,
                    pageBuilder: (context, state) => MaterialPage(
                      fullscreenDialog: true,
                      child: ThemeSettingDialogScreen(
                        onTapPositive: () => context.pop(),
                        onTapNegative: () => context.pop(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
    builder: (context, state, navigationShell) {
      return AppNavigationBar(navigationShell: navigationShell);
    },
  ),
];
