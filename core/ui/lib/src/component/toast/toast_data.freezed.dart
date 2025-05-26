// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ToastData {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ToastType get type => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToastDataCopyWith<ToastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToastDataCopyWith<$Res> {
  factory $ToastDataCopyWith(ToastData value, $Res Function(ToastData) then) =
      _$ToastDataCopyWithImpl<$Res, ToastData>;
  @useResult
  $Res call({
    String id,
    String message,
    ToastType type,
    Duration duration,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ToastDataCopyWithImpl<$Res, $Val extends ToastData>
    implements $ToastDataCopyWith<$Res> {
  _$ToastDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? type = null,
    Object? duration = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ToastType,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as Duration,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ToastDataImplCopyWith<$Res>
    implements $ToastDataCopyWith<$Res> {
  factory _$$ToastDataImplCopyWith(
    _$ToastDataImpl value,
    $Res Function(_$ToastDataImpl) then,
  ) = __$$ToastDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String message,
    ToastType type,
    Duration duration,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ToastDataImplCopyWithImpl<$Res>
    extends _$ToastDataCopyWithImpl<$Res, _$ToastDataImpl>
    implements _$$ToastDataImplCopyWith<$Res> {
  __$$ToastDataImplCopyWithImpl(
    _$ToastDataImpl _value,
    $Res Function(_$ToastDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? type = null,
    Object? duration = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ToastDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ToastType,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as Duration,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$ToastDataImpl implements _ToastData {
  const _$ToastDataImpl({
    required this.id,
    required this.message,
    required this.type,
    required this.duration,
    required this.createdAt,
  });

  @override
  final String id;
  @override
  final String message;
  @override
  final ToastType type;
  @override
  final Duration duration;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ToastData(id: $id, message: $message, type: $type, duration: $duration, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToastDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, type, duration, createdAt);

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToastDataImplCopyWith<_$ToastDataImpl> get copyWith =>
      __$$ToastDataImplCopyWithImpl<_$ToastDataImpl>(this, _$identity);
}

abstract class _ToastData implements ToastData {
  const factory _ToastData({
    required final String id,
    required final String message,
    required final ToastType type,
    required final Duration duration,
    required final DateTime createdAt,
  }) = _$ToastDataImpl;

  @override
  String get id;
  @override
  String get message;
  @override
  ToastType get type;
  @override
  Duration get duration;
  @override
  DateTime get createdAt;

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToastDataImplCopyWith<_$ToastDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
