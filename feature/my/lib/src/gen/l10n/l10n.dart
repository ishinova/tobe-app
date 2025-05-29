import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureMyL10n
/// returned by `FeatureMyL10n.of(context)`.
///
/// Applications need to include `FeatureMyL10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureMyL10n.localizationsDelegates,
///   supportedLocales: FeatureMyL10n.supportedLocales,
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
/// be consistent with the languages listed in the FeatureMyL10n.supportedLocales
/// property.
abstract class FeatureMyL10n {
  FeatureMyL10n(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureMyL10n? of(BuildContext context) {
    return Localizations.of<FeatureMyL10n>(context, FeatureMyL10n);
  }

  static const LocalizationsDelegate<FeatureMyL10n> delegate =
      _FeatureMyL10nDelegate();

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
    Locale('en'),
    Locale('ja'),
  ];

  /// Title for the my page screen
  ///
  /// In en, this message translates to:
  /// **'My Page'**
  String get myPageTitle;

  /// Profile section title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get myPageProfile;

  /// Edit profile button text
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get myPageEditProfile;

  /// Settings menu item
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get myPageSettings;

  /// Help and support menu item
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get myPageHelp;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get myPageLogout;

  /// Quest statistics section title
  ///
  /// In en, this message translates to:
  /// **'Quest Statistics'**
  String get myPageQuestStatistics;

  /// Completed quests label
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get myPageCompletedQuests;

  /// Active quests label
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get myPageActiveQuests;

  /// Total quests label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get myPageTotalQuests;
}

class _FeatureMyL10nDelegate extends LocalizationsDelegate<FeatureMyL10n> {
  const _FeatureMyL10nDelegate();

  @override
  Future<FeatureMyL10n> load(Locale locale) {
    return SynchronousFuture<FeatureMyL10n>(lookupFeatureMyL10n(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureMyL10nDelegate old) => false;
}

FeatureMyL10n lookupFeatureMyL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureMyL10nEn();
    case 'ja':
      return FeatureMyL10nJa();
  }

  throw FlutterError(
    'FeatureMyL10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
