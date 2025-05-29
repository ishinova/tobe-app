// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get homeAppBarTitle => 'ホーム';

  @override
  String get homeQuestOverviewSectionTitle => 'クエスト概要';

  @override
  String get homeQuestOverviewSectionTotalQuests => '総クエスト数';

  @override
  String get homeQuestOverviewSectionQuestsCompleted => '完了したクエスト';

  @override
  String get homeQuestOverviewSectionPendingQuests => '未完了のクエスト';

  @override
  String get homeQuestOverviewSectionQuickAddQuest => 'クイック追加';

  @override
  String get homeQuickAddQuestDialogAppBarTitle => 'クエスト追加';

  @override
  String get homeQuickAddQuestDialogTitleLabel => 'タイトル';

  @override
  String get homeQuickAddQuestDialogTitleEmptyErrorMessage => 'タイトルを入力してください';

  @override
  String get homeQuickAddQuestDialogDescriptionLabel => '説明';

  @override
  String get homeQuickAddQuestDialogNoteLabel => 'ノート';

  @override
  String get homeQuickAddQuestDialogPositive => 'クエストを追加する';

  @override
  String get homeQuickAddQuestDialogNegative => 'キャンセル';

  @override
  String get homeRecentQuestListSectionYourQuestList => 'クエスト一覧';

  @override
  String get homeRecentQuestListSectionMore => 'さらに表示';

  @override
  String get homeErrorMessage => 'エラーが発生しました';

  @override
  String get homeNoQuestsMessage => 'クエストがありません';

  @override
  String get homeQuestStatusBacklog => 'バックログ';

  @override
  String get homeQuestStatusReady => '準備完了';

  @override
  String get homeQuestStatusInProgress => '進行中';

  @override
  String get homeQuestStatusSuspend => '中断';

  @override
  String get homeQuestStatusCompleted => '完了';

  @override
  String get homeQuestStatusAbort => '中止';

  @override
  String get homeDateToday => '今日';

  @override
  String get homeDateYesterday => '昨日';

  @override
  String homeDateDaysAgo(Object days) {
    return '$days日前';
  }
}
