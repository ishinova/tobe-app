import 'dart:async';

import 'package:app_mobile/router/app_navigation_bar.dart';
import 'package:app_mobile/router/app_navigation_key.dart';
import 'package:app_mobile/router/app_page_path.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/legal.dart';
import 'package:core_model/auth.dart';
import 'package:core_model/feed.dart';
import 'package:core_model/quest.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_debug/feature_debug.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';
part 'package:app_mobile/router/routes/app_shell_route.dart';
part 'package:app_mobile/router/routes/auth_route.dart';
part 'package:app_mobile/router/routes/debug_route.dart';
part 'package:app_mobile/router/routes/feed_route.dart';
part 'package:app_mobile/router/routes/home_route.dart';
part 'package:app_mobile/router/routes/onboarding_route.dart';
part 'package:app_mobile/router/routes/quest_route.dart';
part 'package:app_mobile/router/routes/settings_route.dart';
part 'package:app_mobile/router/shell_branch/home_branch.dart';
part 'package:app_mobile/router/shell_branch/quest_branch.dart';
part 'package:app_mobile/router/shell_branch/settings_branch.dart';

/// ルートナビゲーターのキー
final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(Ref ref) {
  final authenticator = ref.watch(authenticatorProvider);

  return GoRouter(
    initialLocation: AppPagePath.home,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
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
