part of 'package:app_mobile/router/app_router.dart';

/// TypedStatefulShellBranch for feature_quest
const questBranch = TypedStatefulShellBranch<QuestBranch>(
  routes: [
    // クエストタブ内でのpush先はここのroutesにネストしていく
    TypedGoRoute<QuestListRoute>(
      path: AppPagePath.quests,
      routes: [
        TypedGoRoute<QuestAddRoute>(path: AppPagePath.questAdd),
        TypedGoRoute<QuestDetailRoute>(path: AppPagePath.questDetail),
      ],
    ),
  ],
);

// ignore: avoid_classes_with_only_static_members
final class QuestBranch extends StatefulShellBranchData {
  const QuestBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = questNavigatorKey;
}
