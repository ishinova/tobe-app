// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get homeAppBarTitle => 'Home';

  @override
  String get homeQuestOverviewSectionTitle => 'Quest Overview';

  @override
  String get homeQuestOverviewSectionTotalQuests => 'Total Quests';

  @override
  String get homeQuestOverviewSectionQuestsCompleted => 'Quests Completed';

  @override
  String get homeQuestOverviewSectionPendingQuests => 'Pending Quests';

  @override
  String get homeQuestOverviewSectionQuickAddQuest => 'Quick Add Quest';

  @override
  String get homeQuickAddQuestDialogAppBarTitle => 'Add Quest';

  @override
  String get homeQuickAddQuestDialogTitleLabel => 'Title';

  @override
  String get homeQuickAddQuestDialogTitleEmptyErrorMessage =>
      'Please enter a title';

  @override
  String get homeQuickAddQuestDialogDescriptionLabel => 'Description';

  @override
  String get homeQuickAddQuestDialogNoteLabel => 'Note';

  @override
  String get homeQuickAddQuestDialogPositive => 'Add Quest';

  @override
  String get homeQuickAddQuestDialogNegative => 'Cancel';

  @override
  String get homeRecentQuestListSectionYourQuestList => 'Your Quest List';

  @override
  String get homeRecentQuestListSectionMore => 'More';

  @override
  String get homeErrorMessage => 'An error occurred';

  @override
  String get homeNoQuestsMessage => 'No quests available';

  @override
  String get homeQuestStatusBacklog => 'Backlog';

  @override
  String get homeQuestStatusReady => 'Ready';

  @override
  String get homeQuestStatusInProgress => 'In Progress';

  @override
  String get homeQuestStatusSuspend => 'Suspended';

  @override
  String get homeQuestStatusCompleted => 'Completed';

  @override
  String get homeQuestStatusAbort => 'Aborted';

  @override
  String get homeDateToday => 'Today';

  @override
  String get homeDateYesterday => 'Yesterday';

  @override
  String homeDateDaysAgo(Object days) {
    return '$days days ago';
  }
}
