// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateVersion {
  AppVersion get force;
  AppVersion get optional;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateVersionCopyWith<UpdateVersion> get copyWith =>
      _$UpdateVersionCopyWithImpl<UpdateVersion>(
          this as UpdateVersion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateVersion &&
            (identical(other.force, force) || other.force == force) &&
            (identical(other.optional, optional) ||
                other.optional == optional));
  }

  @override
  int get hashCode => Object.hash(runtimeType, force, optional);

  @override
  String toString() {
    return 'UpdateVersion(force: $force, optional: $optional)';
  }
}

/// @nodoc
abstract mixin class $UpdateVersionCopyWith<$Res> {
  factory $UpdateVersionCopyWith(
          UpdateVersion value, $Res Function(UpdateVersion) _then) =
      _$UpdateVersionCopyWithImpl;
  @useResult
  $Res call({AppVersion force, AppVersion optional});

  $AppVersionCopyWith<$Res> get force;
  $AppVersionCopyWith<$Res> get optional;
}

/// @nodoc
class _$UpdateVersionCopyWithImpl<$Res>
    implements $UpdateVersionCopyWith<$Res> {
  _$UpdateVersionCopyWithImpl(this._self, this._then);

  final UpdateVersion _self;
  final $Res Function(UpdateVersion) _then;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? force = null,
    Object? optional = null,
  }) {
    return _then(_self.copyWith(
      force: null == force
          ? _self.force
          : force // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      optional: null == optional
          ? _self.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ));
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get force {
    return $AppVersionCopyWith<$Res>(_self.force, (value) {
      return _then(_self.copyWith(force: value));
    });
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get optional {
    return $AppVersionCopyWith<$Res>(_self.optional, (value) {
      return _then(_self.copyWith(optional: value));
    });
  }
}

/// @nodoc

class _UpdateVersion extends UpdateVersion {
  const _UpdateVersion({required this.force, required this.optional})
      : super._();

  @override
  final AppVersion force;
  @override
  final AppVersion optional;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateVersionCopyWith<_UpdateVersion> get copyWith =>
      __$UpdateVersionCopyWithImpl<_UpdateVersion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateVersion &&
            (identical(other.force, force) || other.force == force) &&
            (identical(other.optional, optional) ||
                other.optional == optional));
  }

  @override
  int get hashCode => Object.hash(runtimeType, force, optional);

  @override
  String toString() {
    return 'UpdateVersion(force: $force, optional: $optional)';
  }
}

/// @nodoc
abstract mixin class _$UpdateVersionCopyWith<$Res>
    implements $UpdateVersionCopyWith<$Res> {
  factory _$UpdateVersionCopyWith(
          _UpdateVersion value, $Res Function(_UpdateVersion) _then) =
      __$UpdateVersionCopyWithImpl;
  @override
  @useResult
  $Res call({AppVersion force, AppVersion optional});

  @override
  $AppVersionCopyWith<$Res> get force;
  @override
  $AppVersionCopyWith<$Res> get optional;
}

/// @nodoc
class __$UpdateVersionCopyWithImpl<$Res>
    implements _$UpdateVersionCopyWith<$Res> {
  __$UpdateVersionCopyWithImpl(this._self, this._then);

  final _UpdateVersion _self;
  final $Res Function(_UpdateVersion) _then;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? force = null,
    Object? optional = null,
  }) {
    return _then(_UpdateVersion(
      force: null == force
          ? _self.force
          : force // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      optional: null == optional
          ? _self.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ));
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get force {
    return $AppVersionCopyWith<$Res>(_self.force, (value) {
      return _then(_self.copyWith(force: value));
    });
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get optional {
    return $AppVersionCopyWith<$Res>(_self.optional, (value) {
      return _then(_self.copyWith(optional: value));
    });
  }
}

// dart format on
