import 'package:core_model/src/config/app_version.dart';
import 'package:core_model/src/config/flavor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@Riverpod(keepAlive: true)
AppConfig appConfig(Ref ref) {
  throw UnimplementedError('appConfig');
}

/// AppConfig
///
/// {@category Model}
@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String appName,
    required String packageName,
    required AppVersion version,
    required String buildNumber,
    required String buildSignature,
    required Flavor flavor,
    required String? installerStore,
    required String backendUrl,
    required String websiteUrl,
  }) = _AppConfig;
}

/// FakeAppConfig
const fakeAppConfig = AppConfig(
  appName: 'Fake App',
  packageName: 'com.example.fake_app',
  version: AppVersion(major: 1, minor: 0, patch: 0),
  buildNumber: '1',
  buildSignature: '1',
  flavor: Flavor.dev,
  installerStore: 'fake_store',
  backendUrl: '',
  websiteUrl: '',
);
