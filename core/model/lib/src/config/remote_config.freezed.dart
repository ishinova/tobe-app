// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RemoteConfig {
  UpdateVersion get updateVersion => throw _privateConstructorUsedError;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoteConfigCopyWith<RemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigCopyWith<$Res> {
  factory $RemoteConfigCopyWith(
    RemoteConfig value,
    $Res Function(RemoteConfig) then,
  ) = _$RemoteConfigCopyWithImpl<$Res, RemoteConfig>;
  @useResult
  $Res call({UpdateVersion updateVersion});

  $UpdateVersionCopyWith<$Res> get updateVersion;
}

/// @nodoc
class _$RemoteConfigCopyWithImpl<$Res, $Val extends RemoteConfig>
    implements $RemoteConfigCopyWith<$Res> {
  _$RemoteConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? updateVersion = null}) {
    return _then(
      _value.copyWith(
            updateVersion: null == updateVersion
                ? _value.updateVersion
                : updateVersion // ignore: cast_nullable_to_non_nullable
                      as UpdateVersion,
          )
          as $Val,
    );
  }

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateVersionCopyWith<$Res> get updateVersion {
    return $UpdateVersionCopyWith<$Res>(_value.updateVersion, (value) {
      return _then(_value.copyWith(updateVersion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteConfigImplCopyWith<$Res>
    implements $RemoteConfigCopyWith<$Res> {
  factory _$$RemoteConfigImplCopyWith(
    _$RemoteConfigImpl value,
    $Res Function(_$RemoteConfigImpl) then,
  ) = __$$RemoteConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateVersion updateVersion});

  @override
  $UpdateVersionCopyWith<$Res> get updateVersion;
}

/// @nodoc
class __$$RemoteConfigImplCopyWithImpl<$Res>
    extends _$RemoteConfigCopyWithImpl<$Res, _$RemoteConfigImpl>
    implements _$$RemoteConfigImplCopyWith<$Res> {
  __$$RemoteConfigImplCopyWithImpl(
    _$RemoteConfigImpl _value,
    $Res Function(_$RemoteConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? updateVersion = null}) {
    return _then(
      _$RemoteConfigImpl(
        updateVersion: null == updateVersion
            ? _value.updateVersion
            : updateVersion // ignore: cast_nullable_to_non_nullable
                  as UpdateVersion,
      ),
    );
  }
}

/// @nodoc

class _$RemoteConfigImpl implements _RemoteConfig {
  const _$RemoteConfigImpl({required this.updateVersion});

  @override
  final UpdateVersion updateVersion;

  @override
  String toString() {
    return 'RemoteConfig(updateVersion: $updateVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteConfigImpl &&
            (identical(other.updateVersion, updateVersion) ||
                other.updateVersion == updateVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateVersion);

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteConfigImplCopyWith<_$RemoteConfigImpl> get copyWith =>
      __$$RemoteConfigImplCopyWithImpl<_$RemoteConfigImpl>(this, _$identity);
}

abstract class _RemoteConfig implements RemoteConfig {
  const factory _RemoteConfig({required final UpdateVersion updateVersion}) =
      _$RemoteConfigImpl;

  @override
  UpdateVersion get updateVersion;

  /// Create a copy of RemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteConfigImplCopyWith<_$RemoteConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
