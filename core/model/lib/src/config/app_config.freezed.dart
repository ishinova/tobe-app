// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfig {
  String get appName;
  String get packageName;
  AppVersion get version;
  String get buildNumber;
  String get buildSignature;
  Flavor get flavor;
  String? get installerStore;
  String get backendUrl;
  String get websiteUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<AppConfig> get copyWith =>
      _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppConfig &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore) &&
            (identical(other.backendUrl, backendUrl) ||
                other.backendUrl == backendUrl) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appName,
      packageName,
      version,
      buildNumber,
      buildSignature,
      flavor,
      installerStore,
      backendUrl,
      websiteUrl);

  @override
  String toString() {
    return 'AppConfig(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, flavor: $flavor, installerStore: $installerStore, backendUrl: $backendUrl, websiteUrl: $websiteUrl)';
  }
}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) =
      _$AppConfigCopyWithImpl;
  @useResult
  $Res call(
      {String appName,
      String packageName,
      AppVersion version,
      String buildNumber,
      String buildSignature,
      Flavor flavor,
      String? installerStore,
      String backendUrl,
      String websiteUrl});

  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? flavor = null,
    Object? installerStore = freezed,
    Object? backendUrl = null,
    Object? websiteUrl = null,
  }) {
    return _then(_self.copyWith(
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      buildNumber: null == buildNumber
          ? _self.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _self.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      installerStore: freezed == installerStore
          ? _self.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
      backendUrl: null == backendUrl
          ? _self.backendUrl
          : backendUrl // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: null == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get version {
    return $AppVersionCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// @nodoc

class _AppConfig implements AppConfig {
  const _AppConfig(
      {required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber,
      required this.buildSignature,
      required this.flavor,
      required this.installerStore,
      required this.backendUrl,
      required this.websiteUrl});

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final AppVersion version;
  @override
  final String buildNumber;
  @override
  final String buildSignature;
  @override
  final Flavor flavor;
  @override
  final String? installerStore;
  @override
  final String backendUrl;
  @override
  final String websiteUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore) &&
            (identical(other.backendUrl, backendUrl) ||
                other.backendUrl == backendUrl) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appName,
      packageName,
      version,
      buildNumber,
      buildSignature,
      flavor,
      installerStore,
      backendUrl,
      websiteUrl);

  @override
  String toString() {
    return 'AppConfig(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, flavor: $flavor, installerStore: $installerStore, backendUrl: $backendUrl, websiteUrl: $websiteUrl)';
  }
}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) _then) =
      __$AppConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String appName,
      String packageName,
      AppVersion version,
      String buildNumber,
      String buildSignature,
      Flavor flavor,
      String? installerStore,
      String backendUrl,
      String websiteUrl});

  @override
  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? flavor = null,
    Object? installerStore = freezed,
    Object? backendUrl = null,
    Object? websiteUrl = null,
  }) {
    return _then(_AppConfig(
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      buildNumber: null == buildNumber
          ? _self.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _self.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      installerStore: freezed == installerStore
          ? _self.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
      backendUrl: null == backendUrl
          ? _self.backendUrl
          : backendUrl // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: null == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get version {
    return $AppVersionCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

// dart format on
