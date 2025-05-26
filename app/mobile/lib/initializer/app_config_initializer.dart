import 'package:app_mobile/env.dart';
import 'package:core_model/config.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<AppConfig> initializeAppConfig() async {
  final flavor = Flavor.values.firstWhere(
    (flavor) => flavor.name == appFlavor,
    orElse: () => Flavor.dev,
  );

  final packageInfo = await PackageInfo.fromPlatform();

  return AppConfig(
    flavor: flavor,
    appName: packageInfo.appName,
    packageName: packageInfo.packageName,
    version: AppVersion.parse(packageInfo.version),
    buildNumber: packageInfo.buildNumber,
    buildSignature: packageInfo.buildSignature,
    installerStore: packageInfo.installerStore,
    backendUrl: flavor.backendUrl,
    websiteUrl: flavor.websiteUrl,
  );
}

extension on Flavor {
  String get backendUrl => switch (this) {
    Flavor.dev => Env.backendUrl,
    Flavor.stg => 'https://tobe-app-backend-ysop674t6q-an.a.run.app',
    Flavor.prod => 'https://api.app.tobe.quest',
  };

  String get websiteUrl => switch (this) {
    Flavor.dev => Env.websiteUrl,
    Flavor.stg => 'https://staging.tobe.quest',
    Flavor.prod => 'https://tobe.quest',
  };
}
