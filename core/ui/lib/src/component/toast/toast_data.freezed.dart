// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToastData {
  String get id;
  String get message;
  ToastType get type;
  Duration get duration;
  DateTime get createdAt;

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToastDataCopyWith<ToastData> get copyWith =>
      _$ToastDataCopyWithImpl<ToastData>(this as ToastData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToastData &&
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

  @override
  String toString() {
    return 'ToastData(id: $id, message: $message, type: $type, duration: $duration, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ToastDataCopyWith<$Res> {
  factory $ToastDataCopyWith(ToastData value, $Res Function(ToastData) _then) =
      _$ToastDataCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String message,
      ToastType type,
      Duration duration,
      DateTime createdAt});
}

/// @nodoc
class _$ToastDataCopyWithImpl<$Res> implements $ToastDataCopyWith<$Res> {
  _$ToastDataCopyWithImpl(this._self, this._then);

  final ToastData _self;
  final $Res Function(ToastData) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _ToastData implements ToastData {
  const _ToastData(
      {required this.id,
      required this.message,
      required this.type,
      required this.duration,
      required this.createdAt});

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

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToastDataCopyWith<_ToastData> get copyWith =>
      __$ToastDataCopyWithImpl<_ToastData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToastData &&
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

  @override
  String toString() {
    return 'ToastData(id: $id, message: $message, type: $type, duration: $duration, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ToastDataCopyWith<$Res>
    implements $ToastDataCopyWith<$Res> {
  factory _$ToastDataCopyWith(
          _ToastData value, $Res Function(_ToastData) _then) =
      __$ToastDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      ToastType type,
      Duration duration,
      DateTime createdAt});
}

/// @nodoc
class __$ToastDataCopyWithImpl<$Res> implements _$ToastDataCopyWith<$Res> {
  __$ToastDataCopyWithImpl(this._self, this._then);

  final _ToastData _self;
  final $Res Function(_ToastData) _then;

  /// Create a copy of ToastData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? type = null,
    Object? duration = null,
    Object? createdAt = null,
  }) {
    return _then(_ToastData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
