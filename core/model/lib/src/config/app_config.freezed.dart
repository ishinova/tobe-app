// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppConfig {
  String get appName => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  AppVersion get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get buildSignature => throw _privateConstructorUsedError;
  Flavor get flavor => throw _privateConstructorUsedError;
  String? get installerStore => throw _privateConstructorUsedError;
  String get backendUrl => throw _privateConstructorUsedError;
  String get websiteUrl => throw _privateConstructorUsedError;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res, AppConfig>;
  @useResult
  $Res call({
    String appName,
    String packageName,
    AppVersion version,
    String buildNumber,
    String buildSignature,
    Flavor flavor,
    String? installerStore,
    String backendUrl,
    String websiteUrl,
  });

  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res, $Val extends AppConfig>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            appName: null == appName
                ? _value.appName
                : appName // ignore: cast_nullable_to_non_nullable
                      as String,
            packageName: null == packageName
                ? _value.packageName
                : packageName // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as AppVersion,
            buildNumber: null == buildNumber
                ? _value.buildNumber
                : buildNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            buildSignature: null == buildSignature
                ? _value.buildSignature
                : buildSignature // ignore: cast_nullable_to_non_nullable
                      as String,
            flavor: null == flavor
                ? _value.flavor
                : flavor // ignore: cast_nullable_to_non_nullable
                      as Flavor,
            installerStore: freezed == installerStore
                ? _value.installerStore
                : installerStore // ignore: cast_nullable_to_non_nullable
                      as String?,
            backendUrl: null == backendUrl
                ? _value.backendUrl
                : backendUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            websiteUrl: null == websiteUrl
                ? _value.websiteUrl
                : websiteUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get version {
    return $AppVersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppConfigImplCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$$AppConfigImplCopyWith(
    _$AppConfigImpl value,
    $Res Function(_$AppConfigImpl) then,
  ) = __$$AppConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appName,
    String packageName,
    AppVersion version,
    String buildNumber,
    String buildSignature,
    Flavor flavor,
    String? installerStore,
    String backendUrl,
    String websiteUrl,
  });

  @override
  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$$AppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigCopyWithImpl<$Res, _$AppConfigImpl>
    implements _$$AppConfigImplCopyWith<$Res> {
  __$$AppConfigImplCopyWithImpl(
    _$AppConfigImpl _value,
    $Res Function(_$AppConfigImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$AppConfigImpl(
        appName: null == appName
            ? _value.appName
            : appName // ignore: cast_nullable_to_non_nullable
                  as String,
        packageName: null == packageName
            ? _value.packageName
            : packageName // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as AppVersion,
        buildNumber: null == buildNumber
            ? _value.buildNumber
            : buildNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        buildSignature: null == buildSignature
            ? _value.buildSignature
            : buildSignature // ignore: cast_nullable_to_non_nullable
                  as String,
        flavor: null == flavor
            ? _value.flavor
            : flavor // ignore: cast_nullable_to_non_nullable
                  as Flavor,
        installerStore: freezed == installerStore
            ? _value.installerStore
            : installerStore // ignore: cast_nullable_to_non_nullable
                  as String?,
        backendUrl: null == backendUrl
            ? _value.backendUrl
            : backendUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        websiteUrl: null == websiteUrl
            ? _value.websiteUrl
            : websiteUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AppConfigImpl implements _AppConfig {
  const _$AppConfigImpl({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.buildSignature,
    required this.flavor,
    required this.installerStore,
    required this.backendUrl,
    required this.websiteUrl,
  });

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

  @override
  String toString() {
    return 'AppConfig(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, flavor: $flavor, installerStore: $installerStore, backendUrl: $backendUrl, websiteUrl: $websiteUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigImpl &&
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
    websiteUrl,
  );

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      __$$AppConfigImplCopyWithImpl<_$AppConfigImpl>(this, _$identity);
}

abstract class _AppConfig implements AppConfig {
  const factory _AppConfig({
    required final String appName,
    required final String packageName,
    required final AppVersion version,
    required final String buildNumber,
    required final String buildSignature,
    required final Flavor flavor,
    required final String? installerStore,
    required final String backendUrl,
    required final String websiteUrl,
  }) = _$AppConfigImpl;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  AppVersion get version;
  @override
  String get buildNumber;
  @override
  String get buildSignature;
  @override
  Flavor get flavor;
  @override
  String? get installerStore;
  @override
  String get backendUrl;
  @override
  String get websiteUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
