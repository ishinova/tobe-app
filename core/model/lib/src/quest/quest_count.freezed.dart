// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestCount {
  int get backlog;
  int get ready;
  int get inProgress;
  int get suspend;
  int get completed;
  int get abort;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuestCountCopyWith<QuestCount> get copyWith =>
      _$QuestCountCopyWithImpl<QuestCount>(this as QuestCount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuestCount &&
            (identical(other.backlog, backlog) || other.backlog == backlog) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.suspend, suspend) || other.suspend == suspend) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.abort, abort) || other.abort == abort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backlog, ready, inProgress, suspend, completed, abort);

  @override
  String toString() {
    return 'QuestCount(backlog: $backlog, ready: $ready, inProgress: $inProgress, suspend: $suspend, completed: $completed, abort: $abort)';
  }
}

/// @nodoc
abstract mixin class $QuestCountCopyWith<$Res> {
  factory $QuestCountCopyWith(
          QuestCount value, $Res Function(QuestCount) _then) =
      _$QuestCountCopyWithImpl;
  @useResult
  $Res call(
      {int backlog,
      int ready,
      int inProgress,
      int suspend,
      int completed,
      int abort});
}

/// @nodoc
class _$QuestCountCopyWithImpl<$Res> implements $QuestCountCopyWith<$Res> {
  _$QuestCountCopyWithImpl(this._self, this._then);

  final QuestCount _self;
  final $Res Function(QuestCount) _then;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backlog = null,
    Object? ready = null,
    Object? inProgress = null,
    Object? suspend = null,
    Object? completed = null,
    Object? abort = null,
  }) {
    return _then(_self.copyWith(
      backlog: null == backlog
          ? _self.backlog
          : backlog // ignore: cast_nullable_to_non_nullable
              as int,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as int,
      inProgress: null == inProgress
          ? _self.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as int,
      suspend: null == suspend
          ? _self.suspend
          : suspend // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      abort: null == abort
          ? _self.abort
          : abort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _QuestCount extends QuestCount {
  const _QuestCount(
      {required this.backlog,
      required this.ready,
      required this.inProgress,
      required this.suspend,
      required this.completed,
      required this.abort})
      : super._();

  @override
  final int backlog;
  @override
  final int ready;
  @override
  final int inProgress;
  @override
  final int suspend;
  @override
  final int completed;
  @override
  final int abort;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuestCountCopyWith<_QuestCount> get copyWith =>
      __$QuestCountCopyWithImpl<_QuestCount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestCount &&
            (identical(other.backlog, backlog) || other.backlog == backlog) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.suspend, suspend) || other.suspend == suspend) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.abort, abort) || other.abort == abort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backlog, ready, inProgress, suspend, completed, abort);

  @override
  String toString() {
    return 'QuestCount(backlog: $backlog, ready: $ready, inProgress: $inProgress, suspend: $suspend, completed: $completed, abort: $abort)';
  }
}

/// @nodoc
abstract mixin class _$QuestCountCopyWith<$Res>
    implements $QuestCountCopyWith<$Res> {
  factory _$QuestCountCopyWith(
          _QuestCount value, $Res Function(_QuestCount) _then) =
      __$QuestCountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int backlog,
      int ready,
      int inProgress,
      int suspend,
      int completed,
      int abort});
}

/// @nodoc
class __$QuestCountCopyWithImpl<$Res> implements _$QuestCountCopyWith<$Res> {
  __$QuestCountCopyWithImpl(this._self, this._then);

  final _QuestCount _self;
  final $Res Function(_QuestCount) _then;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backlog = null,
    Object? ready = null,
    Object? inProgress = null,
    Object? suspend = null,
    Object? completed = null,
    Object? abort = null,
  }) {
    return _then(_QuestCount(
      backlog: null == backlog
          ? _self.backlog
          : backlog // ignore: cast_nullable_to_non_nullable
              as int,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as int,
      inProgress: null == inProgress
          ? _self.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as int,
      suspend: null == suspend
          ? _self.suspend
          : suspend // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      abort: null == abort
          ? _self.abort
          : abort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
