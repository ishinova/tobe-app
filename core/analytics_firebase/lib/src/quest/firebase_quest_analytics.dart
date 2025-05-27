import 'package:core_analytics/analytics.dart';
import 'package:core_analytics_firebase/src/firebase_analytics.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

final firebaseQuestAnalyticsProvider = questAnalyticsProvider.overrideWith(
  (ref) =>
      FirebaseQuestAnalytics(analytics: ref.watch(firebaseAnalyticsProvider)),
);

final class FirebaseQuestAnalytics implements QuestAnalytics {
  const FirebaseQuestAnalytics({required FirebaseAnalytics analytics})
    : _analytics = analytics;

  final FirebaseAnalytics _analytics;

  @override
  Future<void> trackShowQuestListPageEvent() async {
    await _analytics.logScreenView(screenName: 'quest_list_page');
  }
}
