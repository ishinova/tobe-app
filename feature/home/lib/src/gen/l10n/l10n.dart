import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n)!;
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ja'),
    Locale('en'),
  ];

  /// No description provided for @homeAppBarTitle.
  ///
  /// In ja, this message translates to:
  /// **'ホーム'**
  String get homeAppBarTitle;

  /// No description provided for @homeQuestOverviewSectionTitle.
  ///
  /// In ja, this message translates to:
  /// **'クエスト概要'**
  String get homeQuestOverviewSectionTitle;

  /// No description provided for @homeQuestOverviewSectionTotalQuests.
  ///
  /// In ja, this message translates to:
  /// **'総クエスト数'**
  String get homeQuestOverviewSectionTotalQuests;

  /// No description provided for @homeQuestOverviewSectionQuestsCompleted.
  ///
  /// In ja, this message translates to:
  /// **'完了したクエスト'**
  String get homeQuestOverviewSectionQuestsCompleted;

  /// No description provided for @homeQuestOverviewSectionPendingQuests.
  ///
  /// In ja, this message translates to:
  /// **'未完了のクエスト'**
  String get homeQuestOverviewSectionPendingQuests;

  /// No description provided for @homeQuestOverviewSectionQuickAddQuest.
  ///
  /// In ja, this message translates to:
  /// **'クイック追加'**
  String get homeQuestOverviewSectionQuickAddQuest;

  /// No description provided for @homeQuickAddQuestDialogAppBarTitle.
  ///
  /// In ja, this message translates to:
  /// **'クエスト追加'**
  String get homeQuickAddQuestDialogAppBarTitle;

  /// No description provided for @homeQuickAddQuestDialogTitleLabel.
  ///
  /// In ja, this message translates to:
  /// **'タイトル'**
  String get homeQuickAddQuestDialogTitleLabel;

  /// No description provided for @homeQuickAddQuestDialogTitleEmptyErrorMessage.
  ///
  /// In ja, this message translates to:
  /// **'タイトルを入力してください'**
  String get homeQuickAddQuestDialogTitleEmptyErrorMessage;

  /// No description provided for @homeQuickAddQuestDialogDescriptionLabel.
  ///
  /// In ja, this message translates to:
  /// **'説明'**
  String get homeQuickAddQuestDialogDescriptionLabel;

  /// No description provided for @homeQuickAddQuestDialogNoteLabel.
  ///
  /// In ja, this message translates to:
  /// **'ノート'**
  String get homeQuickAddQuestDialogNoteLabel;

  /// No description provided for @homeQuickAddQuestDialogPositive.
  ///
  /// In ja, this message translates to:
  /// **'クエストを追加する'**
  String get homeQuickAddQuestDialogPositive;

  /// No description provided for @homeQuickAddQuestDialogNegative.
  ///
  /// In ja, this message translates to:
  /// **'キャンセル'**
  String get homeQuickAddQuestDialogNegative;

  /// No description provided for @homeRecentQuestListSectionYourQuestList.
  ///
  /// In ja, this message translates to:
  /// **'クエスト一覧'**
  String get homeRecentQuestListSectionYourQuestList;

  /// No description provided for @homeRecentQuestListSectionMore.
  ///
  /// In ja, this message translates to:
  /// **'さらに表示'**
  String get homeRecentQuestListSectionMore;

  /// No description provided for @homeErrorMessage.
  ///
  /// In ja, this message translates to:
  /// **'エラーが発生しました'**
  String get homeErrorMessage;

  /// No description provided for @homeNoQuestsMessage.
  ///
  /// In ja, this message translates to:
  /// **'クエストがありません'**
  String get homeNoQuestsMessage;

  /// No description provided for @homeQuestStatusBacklog.
  ///
  /// In ja, this message translates to:
  /// **'バックログ'**
  String get homeQuestStatusBacklog;

  /// No description provided for @homeQuestStatusReady.
  ///
  /// In ja, this message translates to:
  /// **'準備完了'**
  String get homeQuestStatusReady;

  /// No description provided for @homeQuestStatusInProgress.
  ///
  /// In ja, this message translates to:
  /// **'進行中'**
  String get homeQuestStatusInProgress;

  /// No description provided for @homeQuestStatusSuspend.
  ///
  /// In ja, this message translates to:
  /// **'中断'**
  String get homeQuestStatusSuspend;

  /// No description provided for @homeQuestStatusCompleted.
  ///
  /// In ja, this message translates to:
  /// **'完了'**
  String get homeQuestStatusCompleted;

  /// No description provided for @homeQuestStatusAbort.
  ///
  /// In ja, this message translates to:
  /// **'中止'**
  String get homeQuestStatusAbort;

  /// No description provided for @homeDateToday.
  ///
  /// In ja, this message translates to:
  /// **'今日'**
  String get homeDateToday;

  /// No description provided for @homeDateYesterday.
  ///
  /// In ja, this message translates to:
  /// **'昨日'**
  String get homeDateYesterday;

  /// No description provided for @homeDateDaysAgo.
  ///
  /// In ja, this message translates to:
  /// **'{days}日前'**
  String homeDateDaysAgo(Object days);
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nEn();
    case 'ja':
      return L10nJa();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
