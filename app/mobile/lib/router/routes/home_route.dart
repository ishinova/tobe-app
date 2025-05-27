part of 'package:app_mobile/router/app_router.dart';

/// ホーム画面へのルート
final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen(
    onTapNotification: () {
      const FeedListRoute().go(context);
    },
    onQuickAddButtonPressed: () {
      const QuickAddQuestDialogRoute().go(context);
    },
    onTapQuestListItem: (quest) {
      QuestDetailRoute(questId: quest.id).go(context);
    },
    onMoreButtonPressed: () {
      const QuestListRoute().go(context);
    },
  );
}

/// クエストクイック追加ダイアログへのルート
final class QuickAddQuestDialogRoute extends GoRouteData {
  const QuickAddQuestDialogRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  DialogPage<void> buildPage(BuildContext context, GoRouterState state) =>
      DialogPage<void>(
        builder: (context) => QuickAddQuestDialog(onClose: () => context.pop()),
      );
}
