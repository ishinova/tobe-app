import 'dart:async';

import 'package:app_mobile/auth/firebase_authenticator.dart';
import 'package:app_mobile/datastore/preferences_data_store.dart';
import 'package:app_mobile/initializer/app_config_initializer.dart';
import 'package:app_mobile/initializer/database_initializer.dart';
import 'package:app_mobile/initializer/datastore_initializer.dart';
import 'package:app_mobile/initializer/firebase_initializer.dart';
import 'package:app_mobile/initializer/logger_initializer.dart';
import 'package:core_database_drift/drift.dart';
import 'package:core_model/config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

typedef InitializedValues = ({
  AppConfig appConfig,
  AppDatabase database,
  PreferencesDataStore dataStore,
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
  FirebaseRemoteConfig firebaseRemoteConfig,
});

Future<InitializedValues> initializeApp() async {
  initializeLogger();

  final appConfig = await initializeAppConfig();

  final [
    database as AppDatabase,
    dataStore as PreferencesDataStore,
    firebase
        as ({
          FirebaseAnalytics firebaseAnalytics,
          FirebaseAuthenticator firebaseAuthenticator,
          FirebaseRemoteConfig firebaseRemoteConfig,
        }),
  ] = await Future.wait([
    initializeDatabase(),
    initializeDataStore(),
    initializeFirebase(flavor: appConfig.flavor),
  ]);

  final (:firebaseAnalytics, :firebaseAuthenticator, :firebaseRemoteConfig) =
      firebase;

  return (
    appConfig: appConfig,
    database: database,
    dataStore: dataStore,
    firebaseAnalytics: firebaseAnalytics,
    firebaseAuthenticator: firebaseAuthenticator,
    firebaseRemoteConfig: firebaseRemoteConfig,
  );
}
