// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureMyL10nEn extends FeatureMyL10n {
  FeatureMyL10nEn([String locale = 'en']) : super(locale);

  @override
  String get myPageTitle => 'My Page';

  @override
  String get myPageProfile => 'Profile';

  @override
  String get myPageEditProfile => 'Edit Profile';

  @override
  String get myPageSettings => 'Settings';

  @override
  String get myPageHelp => 'Help & Support';

  @override
  String get myPageLogout => 'Log Out';

  @override
  String get myPageQuestStatistics => 'Quest Statistics';

  @override
  String get myPageCompletedQuests => 'Completed';

  @override
  String get myPageActiveQuests => 'Active';

  @override
  String get myPageTotalQuests => 'Total';
}
