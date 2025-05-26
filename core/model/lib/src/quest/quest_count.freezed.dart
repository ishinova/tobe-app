// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuestCount {
  int get backlog => throw _privateConstructorUsedError;
  int get ready => throw _privateConstructorUsedError;
  int get inProgress => throw _privateConstructorUsedError;
  int get suspend => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  int get abort => throw _privateConstructorUsedError;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestCountCopyWith<QuestCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestCountCopyWith<$Res> {
  factory $QuestCountCopyWith(
    QuestCount value,
    $Res Function(QuestCount) then,
  ) = _$QuestCountCopyWithImpl<$Res, QuestCount>;
  @useResult
  $Res call({
    int backlog,
    int ready,
    int inProgress,
    int suspend,
    int completed,
    int abort,
  });
}

/// @nodoc
class _$QuestCountCopyWithImpl<$Res, $Val extends QuestCount>
    implements $QuestCountCopyWith<$Res> {
  _$QuestCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            backlog: null == backlog
                ? _value.backlog
                : backlog // ignore: cast_nullable_to_non_nullable
                      as int,
            ready: null == ready
                ? _value.ready
                : ready // ignore: cast_nullable_to_non_nullable
                      as int,
            inProgress: null == inProgress
                ? _value.inProgress
                : inProgress // ignore: cast_nullable_to_non_nullable
                      as int,
            suspend: null == suspend
                ? _value.suspend
                : suspend // ignore: cast_nullable_to_non_nullable
                      as int,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as int,
            abort: null == abort
                ? _value.abort
                : abort // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuestCountImplCopyWith<$Res>
    implements $QuestCountCopyWith<$Res> {
  factory _$$QuestCountImplCopyWith(
    _$QuestCountImpl value,
    $Res Function(_$QuestCountImpl) then,
  ) = __$$QuestCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int backlog,
    int ready,
    int inProgress,
    int suspend,
    int completed,
    int abort,
  });
}

/// @nodoc
class __$$QuestCountImplCopyWithImpl<$Res>
    extends _$QuestCountCopyWithImpl<$Res, _$QuestCountImpl>
    implements _$$QuestCountImplCopyWith<$Res> {
  __$$QuestCountImplCopyWithImpl(
    _$QuestCountImpl _value,
    $Res Function(_$QuestCountImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$QuestCountImpl(
        backlog: null == backlog
            ? _value.backlog
            : backlog // ignore: cast_nullable_to_non_nullable
                  as int,
        ready: null == ready
            ? _value.ready
            : ready // ignore: cast_nullable_to_non_nullable
                  as int,
        inProgress: null == inProgress
            ? _value.inProgress
            : inProgress // ignore: cast_nullable_to_non_nullable
                  as int,
        suspend: null == suspend
            ? _value.suspend
            : suspend // ignore: cast_nullable_to_non_nullable
                  as int,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as int,
        abort: null == abort
            ? _value.abort
            : abort // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$QuestCountImpl extends _QuestCount {
  const _$QuestCountImpl({
    required this.backlog,
    required this.ready,
    required this.inProgress,
    required this.suspend,
    required this.completed,
    required this.abort,
  }) : super._();

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

  @override
  String toString() {
    return 'QuestCount(backlog: $backlog, ready: $ready, inProgress: $inProgress, suspend: $suspend, completed: $completed, abort: $abort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestCountImpl &&
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
    runtimeType,
    backlog,
    ready,
    inProgress,
    suspend,
    completed,
    abort,
  );

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestCountImplCopyWith<_$QuestCountImpl> get copyWith =>
      __$$QuestCountImplCopyWithImpl<_$QuestCountImpl>(this, _$identity);
}

abstract class _QuestCount extends QuestCount {
  const factory _QuestCount({
    required final int backlog,
    required final int ready,
    required final int inProgress,
    required final int suspend,
    required final int completed,
    required final int abort,
  }) = _$QuestCountImpl;
  const _QuestCount._() : super._();

  @override
  int get backlog;
  @override
  int get ready;
  @override
  int get inProgress;
  @override
  int get suspend;
  @override
  int get completed;
  @override
  int get abort;

  /// Create a copy of QuestCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestCountImplCopyWith<_$QuestCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
