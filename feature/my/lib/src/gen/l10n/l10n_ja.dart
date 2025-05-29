// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class FeatureMyL10nJa extends FeatureMyL10n {
  FeatureMyL10nJa([String locale = 'ja']) : super(locale);

  @override
  String get myPageTitle => 'マイページ';

  @override
  String get myPageProfile => 'プロフィール';

  @override
  String get myPageEditProfile => 'プロフィールを編集';

  @override
  String get myPageSettings => '設定';

  @override
  String get myPageHelp => 'ヘルプ＆サポート';

  @override
  String get myPageLogout => 'ログアウト';

  @override
  String get myPageQuestStatistics => 'クエスト統計';

  @override
  String get myPageCompletedQuests => '完了';

  @override
  String get myPageActiveQuests => '進行中';

  @override
  String get myPageTotalQuests => '合計';

  @override
  String get myPageLogoutConfirmationMessage => 'ログアウトしてもよろしいですか？';

  @override
  String get myPageCancel => 'キャンセル';

  @override
  String get myPageLogoutButton => 'ログアウト';
}
