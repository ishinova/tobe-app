// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersion {
  int get major;
  int get minor;
  int get patch;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<AppVersion> get copyWith =>
      _$AppVersionCopyWithImpl<AppVersion>(this as AppVersion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppVersion &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch);

  @override
  String toString() {
    return 'AppVersion(major: $major, minor: $minor, patch: $patch)';
  }
}

/// @nodoc
abstract mixin class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) _then) =
      _$AppVersionCopyWithImpl;
  @useResult
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._self, this._then);

  final AppVersion _self;
  final $Res Function(AppVersion) _then;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
  }) {
    return _then(_self.copyWith(
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _AppVersion extends AppVersion {
  const _AppVersion(
      {required this.major, required this.minor, required this.patch})
      : super._();

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersion &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch);

  @override
  String toString() {
    return 'AppVersion(major: $major, minor: $minor, patch: $patch)';
  }
}

/// @nodoc
abstract mixin class _$AppVersionCopyWith<$Res>
    implements $AppVersionCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) _then) =
      __$AppVersionCopyWithImpl;
  @override
  @useResult
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class __$AppVersionCopyWithImpl<$Res> implements _$AppVersionCopyWith<$Res> {
  __$AppVersionCopyWithImpl(this._self, this._then);

  final _AppVersion _self;
  final $Res Function(_AppVersion) _then;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
  }) {
    return _then(_AppVersion(
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
