import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureAnnouncementL10n
/// returned by `FeatureAnnouncementL10n.of(context)`.
///
/// Applications need to include `FeatureAnnouncementL10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureAnnouncementL10n.localizationsDelegates,
///   supportedLocales: FeatureAnnouncementL10n.supportedLocales,
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
/// be consistent with the languages listed in the FeatureAnnouncementL10n.supportedLocales
/// property.
abstract class FeatureAnnouncementL10n {
  FeatureAnnouncementL10n(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureAnnouncementL10n? of(BuildContext context) {
    return Localizations.of<FeatureAnnouncementL10n>(
      context,
      FeatureAnnouncementL10n,
    );
  }

  static const LocalizationsDelegate<FeatureAnnouncementL10n> delegate =
      _FeatureAnnouncementL10nDelegate();

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

  /// Title for the announcements list screen
  ///
  /// In en, this message translates to:
  /// **'Announcements'**
  String get announcementListTitle;

  /// Message shown when there are no announcements
  ///
  /// In en, this message translates to:
  /// **'No announcements at this time'**
  String get announcementEmptyMessage;

  /// Information type announcement label
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get announcementTypeInfo;

  /// Warning/Important type announcement label
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get announcementTypeWarning;

  /// Update type announcement label
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get announcementTypeUpdate;

  /// Badge text for new announcements
  ///
  /// In en, this message translates to:
  /// **'NEW'**
  String get announcementNewBadge;
}

class _FeatureAnnouncementL10nDelegate
    extends LocalizationsDelegate<FeatureAnnouncementL10n> {
  const _FeatureAnnouncementL10nDelegate();

  @override
  Future<FeatureAnnouncementL10n> load(Locale locale) {
    return SynchronousFuture<FeatureAnnouncementL10n>(
      lookupFeatureAnnouncementL10n(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureAnnouncementL10nDelegate old) => false;
}

FeatureAnnouncementL10n lookupFeatureAnnouncementL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureAnnouncementL10nEn();
    case 'ja':
      return FeatureAnnouncementL10nJa();
  }

  throw FlutterError(
    'FeatureAnnouncementL10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
