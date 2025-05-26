part of 'package:app_mobile/router/app_router.dart';

/// お知らせ一覧画面
final class FeedListRoute extends GoRouteData {
  const FeedListRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => FeedListScreen(
    onTapFeedListItem: (feed) {
      FeedDetailRoute(feedId: feed.id).go(context);
    },
  );
}

/// お知らせ詳細画面
final class FeedDetailRoute extends GoRouteData {
  const FeedDetailRoute({required this.feedId});

  final FeedId feedId;

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FeedDetailScreen(id: feedId);
  }
}
