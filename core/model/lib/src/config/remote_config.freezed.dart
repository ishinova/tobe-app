// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteConfig {
  UpdateVersion get updateVersion;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteConfigCopyWith<RemoteConfig> get copyWith =>
      _$RemoteConfigCopyWithImpl<RemoteConfig>(
          this as RemoteConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteConfig &&
            (identical(other.updateVersion, updateVersion) ||
                other.updateVersion == updateVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateVersion);

  @override
  String toString() {
    return 'RemoteConfig(updateVersion: $updateVersion)';
  }
}

/// @nodoc
abstract mixin class $RemoteConfigCopyWith<$Res> {
  factory $RemoteConfigCopyWith(
          RemoteConfig value, $Res Function(RemoteConfig) _then) =
      _$RemoteConfigCopyWithImpl;
  @useResult
  $Res call({UpdateVersion updateVersion});

  $UpdateVersionCopyWith<$Res> get updateVersion;
}

/// @nodoc
class _$RemoteConfigCopyWithImpl<$Res> implements $RemoteConfigCopyWith<$Res> {
  _$RemoteConfigCopyWithImpl(this._self, this._then);

  final RemoteConfig _self;
  final $Res Function(RemoteConfig) _then;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateVersion = null,
  }) {
    return _then(_self.copyWith(
      updateVersion: null == updateVersion
          ? _self.updateVersion
          : updateVersion // ignore: cast_nullable_to_non_nullable
              as UpdateVersion,
    ));
  }

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateVersionCopyWith<$Res> get updateVersion {
    return $UpdateVersionCopyWith<$Res>(_self.updateVersion, (value) {
      return _then(_self.copyWith(updateVersion: value));
    });
  }
}

/// @nodoc

class _RemoteConfig implements RemoteConfig {
  const _RemoteConfig({required this.updateVersion});

  @override
  final UpdateVersion updateVersion;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteConfigCopyWith<_RemoteConfig> get copyWith =>
      __$RemoteConfigCopyWithImpl<_RemoteConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteConfig &&
            (identical(other.updateVersion, updateVersion) ||
                other.updateVersion == updateVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateVersion);

  @override
  String toString() {
    return 'RemoteConfig(updateVersion: $updateVersion)';
  }
}

/// @nodoc
abstract mixin class _$RemoteConfigCopyWith<$Res>
    implements $RemoteConfigCopyWith<$Res> {
  factory _$RemoteConfigCopyWith(
          _RemoteConfig value, $Res Function(_RemoteConfig) _then) =
      __$RemoteConfigCopyWithImpl;
  @override
  @useResult
  $Res call({UpdateVersion updateVersion});

  @override
  $UpdateVersionCopyWith<$Res> get updateVersion;
}

/// @nodoc
class __$RemoteConfigCopyWithImpl<$Res>
    implements _$RemoteConfigCopyWith<$Res> {
  __$RemoteConfigCopyWithImpl(this._self, this._then);

  final _RemoteConfig _self;
  final $Res Function(_RemoteConfig) _then;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? updateVersion = null,
  }) {
    return _then(_RemoteConfig(
      updateVersion: null == updateVersion
          ? _self.updateVersion
          : updateVersion // ignore: cast_nullable_to_non_nullable
              as UpdateVersion,
    ));
  }

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateVersionCopyWith<$Res> get updateVersion {
    return $UpdateVersionCopyWith<$Res>(_self.updateVersion, (value) {
      return _then(_self.copyWith(updateVersion: value));
    });
  }
}

// dart format on
