// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppVersion {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get patch => throw _privateConstructorUsedError;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
    AppVersion value,
    $Res Function(AppVersion) then,
  ) = _$AppVersionCopyWithImpl<$Res, AppVersion>;
  @useResult
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res, $Val extends AppVersion>
    implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
  }) {
    return _then(
      _value.copyWith(
            major: null == major
                ? _value.major
                : major // ignore: cast_nullable_to_non_nullable
                      as int,
            minor: null == minor
                ? _value.minor
                : minor // ignore: cast_nullable_to_non_nullable
                      as int,
            patch: null == patch
                ? _value.patch
                : patch // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppVersionImplCopyWith<$Res>
    implements $AppVersionCopyWith<$Res> {
  factory _$$AppVersionImplCopyWith(
    _$AppVersionImpl value,
    $Res Function(_$AppVersionImpl) then,
  ) = __$$AppVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class __$$AppVersionImplCopyWithImpl<$Res>
    extends _$AppVersionCopyWithImpl<$Res, _$AppVersionImpl>
    implements _$$AppVersionImplCopyWith<$Res> {
  __$$AppVersionImplCopyWithImpl(
    _$AppVersionImpl _value,
    $Res Function(_$AppVersionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
  }) {
    return _then(
      _$AppVersionImpl(
        major: null == major
            ? _value.major
            : major // ignore: cast_nullable_to_non_nullable
                  as int,
        minor: null == minor
            ? _value.minor
            : minor // ignore: cast_nullable_to_non_nullable
                  as int,
        patch: null == patch
            ? _value.patch
            : patch // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AppVersionImpl extends _AppVersion {
  const _$AppVersionImpl({
    required this.major,
    required this.minor,
    required this.patch,
  }) : super._();

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;

  @override
  String toString() {
    return 'AppVersion(major: $major, minor: $minor, patch: $patch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionImpl &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch);

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionImplCopyWith<_$AppVersionImpl> get copyWith =>
      __$$AppVersionImplCopyWithImpl<_$AppVersionImpl>(this, _$identity);
}

abstract class _AppVersion extends AppVersion {
  const factory _AppVersion({
    required final int major,
    required final int minor,
    required final int patch,
  }) = _$AppVersionImpl;
  const _AppVersion._() : super._();

  @override
  int get major;
  @override
  int get minor;
  @override
  int get patch;

  /// Create a copy of AppVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppVersionImplCopyWith<_$AppVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
