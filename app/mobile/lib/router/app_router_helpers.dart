import 'dart:async';

import 'package:app_mobile/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Helper class for type-safe navigation
class AppRouterHelpers {
  AppRouterHelpers._();

  // Auth routes
  static void goToAuth(BuildContext context) {
    context.goNamed(AppRoutes.auth);
  }

  static void goToOnboarding(BuildContext context) {
    context.goNamed(AppRoutes.onboarding);
  }

  // Home routes
  static void goToHome(BuildContext context) {
    context.goNamed(AppRoutes.home);
  }

  static void goToFeedList(BuildContext context) {
    context.goNamed(AppRoutes.feedList);
  }

  static void goToFeedDetail(BuildContext context, String feedId) {
    context.goNamed(AppRoutes.feedDetail, pathParameters: {'feedId': feedId});
  }

  static void pushFeedDetail(BuildContext context, String feedId) {
    unawaited(
      context.pushNamed(
        AppRoutes.feedDetail,
        pathParameters: {'feedId': feedId},
      ),
    );
  }

  static void goToQuickAddQuest(BuildContext context) {
    context.goNamed(AppRoutes.quickAddQuest);
  }

  static void pushQuickAddQuest(BuildContext context) {
    unawaited(context.pushNamed(AppRoutes.quickAddQuest));
  }

  // Quest routes
  static void goToQuestList(BuildContext context) {
    context.goNamed(AppRoutes.questList);
  }

  static void goToQuestAdd(BuildContext context) {
    context.goNamed(AppRoutes.questAdd);
  }

  static void pushQuestAdd(BuildContext context) {
    unawaited(context.pushNamed(AppRoutes.questAdd));
  }

  static void goToQuestDetail(BuildContext context, String questId) {
    context.goNamed(
      AppRoutes.questDetail,
      pathParameters: {'questId': questId},
    );
  }

  static void pushQuestDetail(BuildContext context, String questId) {
    unawaited(
      context.pushNamed(
        AppRoutes.questDetail,
        pathParameters: {'questId': questId},
      ),
    );
  }

  // Settings routes
  static void goToSettings(BuildContext context) {
    context.goNamed(AppRoutes.settings);
  }

  static void goToThemeSetting(BuildContext context) {
    context.goNamed(AppRoutes.themeSetting);
  }

  static void pushThemeSetting(BuildContext context) {
    unawaited(context.pushNamed(AppRoutes.themeSetting));
  }

  static void showLicense(BuildContext context) {
    showLicensePage(context: context);
  }

  // Debug routes
  static void goToDebug(BuildContext context) {
    context.goNamed(AppRoutes.debug);
  }

  static void pushDebug(BuildContext context) {
    unawaited(context.pushNamed(AppRoutes.debug));
  }

  static void goToDataStoreSettings(BuildContext context) {
    context.goNamed(AppRoutes.dataStoreSettings);
  }

  static void pushDataStoreSettings(BuildContext context) {
    unawaited(context.pushNamed(AppRoutes.dataStoreSettings));
  }
}
