import 'package:core_model/src/config/app_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_version.freezed.dart';

/// UpdateVersion
///
/// {@category Model}
@freezed
abstract class UpdateVersion with _$UpdateVersion {
  const factory UpdateVersion({
    required AppVersion force,
    required AppVersion optional,
  }) = _UpdateVersion;

  const UpdateVersion._();

  bool forceUpdatable(AppVersion version) => _updatable(version, force);

  bool optionalUpdatable(AppVersion version) => _updatable(version, optional);

  bool _updatable(AppVersion currentVersion, AppVersion updateVersion) {
    return currentVersion < updateVersion;
  }
}

/// FakeUpdateVersion
const fakeUpdateVersion = UpdateVersion(
  force: AppVersion(major: 1, minor: 0, patch: 0),
  optional: AppVersion(major: 1, minor: 0, patch: 0),
);
