// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateVersion {
  AppVersion get force => throw _privateConstructorUsedError;
  AppVersion get optional => throw _privateConstructorUsedError;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateVersionCopyWith<UpdateVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateVersionCopyWith<$Res> {
  factory $UpdateVersionCopyWith(
    UpdateVersion value,
    $Res Function(UpdateVersion) then,
  ) = _$UpdateVersionCopyWithImpl<$Res, UpdateVersion>;
  @useResult
  $Res call({AppVersion force, AppVersion optional});

  $AppVersionCopyWith<$Res> get force;
  $AppVersionCopyWith<$Res> get optional;
}

/// @nodoc
class _$UpdateVersionCopyWithImpl<$Res, $Val extends UpdateVersion>
    implements $UpdateVersionCopyWith<$Res> {
  _$UpdateVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? force = null, Object? optional = null}) {
    return _then(
      _value.copyWith(
            force: null == force
                ? _value.force
                : force // ignore: cast_nullable_to_non_nullable
                      as AppVersion,
            optional: null == optional
                ? _value.optional
                : optional // ignore: cast_nullable_to_non_nullable
                      as AppVersion,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get force {
    return $AppVersionCopyWith<$Res>(_value.force, (value) {
      return _then(_value.copyWith(force: value) as $Val);
    });
  }

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get optional {
    return $AppVersionCopyWith<$Res>(_value.optional, (value) {
      return _then(_value.copyWith(optional: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateVersionImplCopyWith<$Res>
    implements $UpdateVersionCopyWith<$Res> {
  factory _$$UpdateVersionImplCopyWith(
    _$UpdateVersionImpl value,
    $Res Function(_$UpdateVersionImpl) then,
  ) = __$$UpdateVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppVersion force, AppVersion optional});

  @override
  $AppVersionCopyWith<$Res> get force;
  @override
  $AppVersionCopyWith<$Res> get optional;
}

/// @nodoc
class __$$UpdateVersionImplCopyWithImpl<$Res>
    extends _$UpdateVersionCopyWithImpl<$Res, _$UpdateVersionImpl>
    implements _$$UpdateVersionImplCopyWith<$Res> {
  __$$UpdateVersionImplCopyWithImpl(
    _$UpdateVersionImpl _value,
    $Res Function(_$UpdateVersionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? force = null, Object? optional = null}) {
    return _then(
      _$UpdateVersionImpl(
        force: null == force
            ? _value.force
            : force // ignore: cast_nullable_to_non_nullable
                  as AppVersion,
        optional: null == optional
            ? _value.optional
            : optional // ignore: cast_nullable_to_non_nullable
                  as AppVersion,
      ),
    );
  }
}

/// @nodoc

class _$UpdateVersionImpl extends _UpdateVersion {
  const _$UpdateVersionImpl({required this.force, required this.optional})
    : super._();

  @override
  final AppVersion force;
  @override
  final AppVersion optional;

  @override
  String toString() {
    return 'UpdateVersion(force: $force, optional: $optional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVersionImpl &&
            (identical(other.force, force) || other.force == force) &&
            (identical(other.optional, optional) ||
                other.optional == optional));
  }

  @override
  int get hashCode => Object.hash(runtimeType, force, optional);

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVersionImplCopyWith<_$UpdateVersionImpl> get copyWith =>
      __$$UpdateVersionImplCopyWithImpl<_$UpdateVersionImpl>(this, _$identity);
}

abstract class _UpdateVersion extends UpdateVersion {
  const factory _UpdateVersion({
    required final AppVersion force,
    required final AppVersion optional,
  }) = _$UpdateVersionImpl;
  const _UpdateVersion._() : super._();

  @override
  AppVersion get force;
  @override
  AppVersion get optional;

  /// Create a copy of UpdateVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateVersionImplCopyWith<_$UpdateVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
