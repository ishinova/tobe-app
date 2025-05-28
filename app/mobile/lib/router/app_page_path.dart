/// アプリ内で使用する画面のパス
final class AppPagePath {
  static const auth = '/auth';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const quests = '/quests';
  static const questDetail = ':questId';
  static const questAdd = 'add';
  static const root = '/';
  static const settings = '/settings';
  static const license = 'license';
  static const theme = 'theme';
  static const feeds = '/feeds';
  static const debug = '/debug';
  static const dataStoreSettings = '/dataStoreSettings';
}

/// 認証済みであることが前提のパス
const authorizedPaths = [
  AppPagePath.home,
  AppPagePath.quests,
  AppPagePath.questDetail,
  AppPagePath.questAdd,
  AppPagePath.settings,
];
