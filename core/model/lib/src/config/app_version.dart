import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';

/// アプリバージョン
///
/// {@category Model}
@freezed
abstract class AppVersion with _$AppVersion {
  const factory AppVersion({
    required int major,
    required int minor,
    required int patch,
  }) = _AppVersion;

  factory AppVersion.parse(String version) {
    final versionList = version.split('.').map(int.parse).toList();
    return AppVersion(
      major: versionList[0],
      minor: versionList[1],
      patch: versionList[2],
    );
  }

  const AppVersion._();

  String get value => '$major.$minor.$patch';

  int compareTo(AppVersion other) {
    if (major != other.major) {
      return major.compareTo(other.major);
    }
    if (minor != other.minor) {
      return minor.compareTo(other.minor);
    }
    return patch.compareTo(other.patch);
  }

  bool operator >(AppVersion other) => compareTo(other) > 0;

  bool operator <(AppVersion other) => compareTo(other) < 0;

  bool operator >=(AppVersion other) => compareTo(other) >= 0;

  bool operator <=(AppVersion other) => compareTo(other) <= 0;
}
