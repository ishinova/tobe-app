// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get feedListAppBarTitle => 'Feed';

  @override
  String get feedDetailAppBarTitle => 'Feed';

  @override
  String get announcementListTitle => 'Announcements';

  @override
  String get announcementEmptyMessage => 'No announcements at this time';

  @override
  String get announcementTypeInfo => 'Information';

  @override
  String get announcementTypeWarning => 'Important';

  @override
  String get announcementTypeUpdate => 'Update';

  @override
  String get announcementNewBadge => 'NEW';
}
