// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get feedListAppBarTitle => 'フィード';

  @override
  String get feedDetailAppBarTitle => 'フィード';

  @override
  String get announcementListTitle => 'お知らせ';

  @override
  String get announcementEmptyMessage => '現在お知らせはありません';

  @override
  String get announcementTypeInfo => 'お知らせ';

  @override
  String get announcementTypeWarning => '重要';

  @override
  String get announcementTypeUpdate => 'アップデート';

  @override
  String get announcementNewBadge => 'NEW';
}
