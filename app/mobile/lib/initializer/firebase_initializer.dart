import 'package:app_mobile/auth/firebase_authenticator.dart';
import 'package:app_mobile/flavor/flavor.dart';
import 'package:core_model/config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

typedef InitializedValues = ({
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
  FirebaseRemoteConfig firebaseRemoteConfig,
});

Future<InitializedValues> initializeFirebase({required Flavor flavor}) async {
  await Firebase.initializeApp(options: flavor.firebaseOptions);

  final firebaseRemoteConfig = FirebaseRemoteConfig.instance;
  await firebaseRemoteConfig.fetchAndActivate();

  return (
    firebaseAnalytics: FirebaseAnalytics.instance,
    firebaseAuthenticator: FirebaseAuthenticator(
      firebaseAuth: FirebaseAuth.instance,
    ),
    firebaseRemoteConfig: firebaseRemoteConfig,
  );
}
