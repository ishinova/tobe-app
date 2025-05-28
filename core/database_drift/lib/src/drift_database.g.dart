// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $QuestsTable extends Quests with TableInfo<$QuestsTable, QuestEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _begunAtMeta =
      const VerificationMeta('begunAt');
  @override
  late final GeneratedColumn<DateTime> begunAt = GeneratedColumn<DateTime>(
      'begun_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endedAtMeta =
      const VerificationMeta('endedAt');
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
      'ended_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _coverImageUrlMeta =
      const VerificationMeta('coverImageUrl');
  @override
  late final GeneratedColumn<String> coverImageUrl = GeneratedColumn<String>(
      'cover_image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        begunAt,
        endedAt,
        categoryId,
        status,
        coverImageUrl,
        note
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quests';
  @override
  VerificationContext validateIntegrity(Insertable<QuestEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('begun_at')) {
      context.handle(_begunAtMeta,
          begunAt.isAcceptableOrUnknown(data['begun_at']!, _begunAtMeta));
    }
    if (data.containsKey('ended_at')) {
      context.handle(_endedAtMeta,
          endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('cover_image_url')) {
      context.handle(
          _coverImageUrlMeta,
          coverImageUrl.isAcceptableOrUnknown(
              data['cover_image_url']!, _coverImageUrlMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      begunAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}begun_at']),
      endedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}ended_at']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      coverImageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_image_url']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $QuestsTable createAlias(String alias) {
    return $QuestsTable(attachedDatabase, alias);
  }
}

class QuestEntity extends DataClass implements Insertable<QuestEntity> {
  final String id;
  final String title;
  final String description;
  final DateTime? begunAt;
  final DateTime? endedAt;
  final String? categoryId;
  final String status;
  final String? coverImageUrl;
  final String note;
  const QuestEntity(
      {required this.id,
      required this.title,
      required this.description,
      this.begunAt,
      this.endedAt,
      this.categoryId,
      required this.status,
      this.coverImageUrl,
      required this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || begunAt != null) {
      map['begun_at'] = Variable<DateTime>(begunAt);
    }
    if (!nullToAbsent || endedAt != null) {
      map['ended_at'] = Variable<DateTime>(endedAt);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || coverImageUrl != null) {
      map['cover_image_url'] = Variable<String>(coverImageUrl);
    }
    map['note'] = Variable<String>(note);
    return map;
  }

  QuestsCompanion toCompanion(bool nullToAbsent) {
    return QuestsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      begunAt: begunAt == null && nullToAbsent
          ? const Value.absent()
          : Value(begunAt),
      endedAt: endedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endedAt),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      status: Value(status),
      coverImageUrl: coverImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(coverImageUrl),
      note: Value(note),
    );
  }

  factory QuestEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestEntity(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      begunAt: serializer.fromJson<DateTime?>(json['begunAt']),
      endedAt: serializer.fromJson<DateTime?>(json['endedAt']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      status: serializer.fromJson<String>(json['status']),
      coverImageUrl: serializer.fromJson<String?>(json['coverImageUrl']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'begunAt': serializer.toJson<DateTime?>(begunAt),
      'endedAt': serializer.toJson<DateTime?>(endedAt),
      'categoryId': serializer.toJson<String?>(categoryId),
      'status': serializer.toJson<String>(status),
      'coverImageUrl': serializer.toJson<String?>(coverImageUrl),
      'note': serializer.toJson<String>(note),
    };
  }

  QuestEntity copyWith(
          {String? id,
          String? title,
          String? description,
          Value<DateTime?> begunAt = const Value.absent(),
          Value<DateTime?> endedAt = const Value.absent(),
          Value<String?> categoryId = const Value.absent(),
          String? status,
          Value<String?> coverImageUrl = const Value.absent(),
          String? note}) =>
      QuestEntity(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        begunAt: begunAt.present ? begunAt.value : this.begunAt,
        endedAt: endedAt.present ? endedAt.value : this.endedAt,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        status: status ?? this.status,
        coverImageUrl:
            coverImageUrl.present ? coverImageUrl.value : this.coverImageUrl,
        note: note ?? this.note,
      );
  QuestEntity copyWithCompanion(QuestsCompanion data) {
    return QuestEntity(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      begunAt: data.begunAt.present ? data.begunAt.value : this.begunAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      status: data.status.present ? data.status.value : this.status,
      coverImageUrl: data.coverImageUrl.present
          ? data.coverImageUrl.value
          : this.coverImageUrl,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestEntity(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('begunAt: $begunAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('categoryId: $categoryId, ')
          ..write('status: $status, ')
          ..write('coverImageUrl: $coverImageUrl, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, begunAt, endedAt,
      categoryId, status, coverImageUrl, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestEntity &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.begunAt == this.begunAt &&
          other.endedAt == this.endedAt &&
          other.categoryId == this.categoryId &&
          other.status == this.status &&
          other.coverImageUrl == this.coverImageUrl &&
          other.note == this.note);
}

class QuestsCompanion extends UpdateCompanion<QuestEntity> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<DateTime?> begunAt;
  final Value<DateTime?> endedAt;
  final Value<String?> categoryId;
  final Value<String> status;
  final Value<String?> coverImageUrl;
  final Value<String> note;
  final Value<int> rowid;
  const QuestsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.begunAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.status = const Value.absent(),
    this.coverImageUrl = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestsCompanion.insert({
    required String id,
    required String title,
    required String description,
    this.begunAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.categoryId = const Value.absent(),
    required String status,
    this.coverImageUrl = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        description = Value(description),
        status = Value(status);
  static Insertable<QuestEntity> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? begunAt,
    Expression<DateTime>? endedAt,
    Expression<String>? categoryId,
    Expression<String>? status,
    Expression<String>? coverImageUrl,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (begunAt != null) 'begun_at': begunAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (categoryId != null) 'category_id': categoryId,
      if (status != null) 'status': status,
      if (coverImageUrl != null) 'cover_image_url': coverImageUrl,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestsCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? description,
      Value<DateTime?>? begunAt,
      Value<DateTime?>? endedAt,
      Value<String?>? categoryId,
      Value<String>? status,
      Value<String?>? coverImageUrl,
      Value<String>? note,
      Value<int>? rowid}) {
    return QuestsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      begunAt: begunAt ?? this.begunAt,
      endedAt: endedAt ?? this.endedAt,
      categoryId: categoryId ?? this.categoryId,
      status: status ?? this.status,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (begunAt.present) {
      map['begun_at'] = Variable<DateTime>(begunAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (coverImageUrl.present) {
      map['cover_image_url'] = Variable<String>(coverImageUrl.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('begunAt: $begunAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('categoryId: $categoryId, ')
          ..write('status: $status, ')
          ..write('coverImageUrl: $coverImageUrl, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $QuestsTable quests = $QuestsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [quests];
}

typedef $$QuestsTableCreateCompanionBuilder = QuestsCompanion Function({
  required String id,
  required String title,
  required String description,
  Value<DateTime?> begunAt,
  Value<DateTime?> endedAt,
  Value<String?> categoryId,
  required String status,
  Value<String?> coverImageUrl,
  Value<String> note,
  Value<int> rowid,
});
typedef $$QuestsTableUpdateCompanionBuilder = QuestsCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<String> description,
  Value<DateTime?> begunAt,
  Value<DateTime?> endedAt,
  Value<String?> categoryId,
  Value<String> status,
  Value<String?> coverImageUrl,
  Value<String> note,
  Value<int> rowid,
});

class $$QuestsTableFilterComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get begunAt => $composableBuilder(
      column: $table.begunAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
      column: $table.endedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get coverImageUrl => $composableBuilder(
      column: $table.coverImageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));
}

class $$QuestsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get begunAt => $composableBuilder(
      column: $table.begunAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
      column: $table.endedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get coverImageUrl => $composableBuilder(
      column: $table.coverImageUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));
}

class $$QuestsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get begunAt =>
      $composableBuilder(column: $table.begunAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get coverImageUrl => $composableBuilder(
      column: $table.coverImageUrl, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$QuestsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuestsTable,
    QuestEntity,
    $$QuestsTableFilterComposer,
    $$QuestsTableOrderingComposer,
    $$QuestsTableAnnotationComposer,
    $$QuestsTableCreateCompanionBuilder,
    $$QuestsTableUpdateCompanionBuilder,
    (QuestEntity, BaseReferences<_$AppDatabase, $QuestsTable, QuestEntity>),
    QuestEntity,
    PrefetchHooks Function()> {
  $$QuestsTableTableManager(_$AppDatabase db, $QuestsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<DateTime?> begunAt = const Value.absent(),
            Value<DateTime?> endedAt = const Value.absent(),
            Value<String?> categoryId = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> coverImageUrl = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestsCompanion(
            id: id,
            title: title,
            description: description,
            begunAt: begunAt,
            endedAt: endedAt,
            categoryId: categoryId,
            status: status,
            coverImageUrl: coverImageUrl,
            note: note,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            required String description,
            Value<DateTime?> begunAt = const Value.absent(),
            Value<DateTime?> endedAt = const Value.absent(),
            Value<String?> categoryId = const Value.absent(),
            required String status,
            Value<String?> coverImageUrl = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestsCompanion.insert(
            id: id,
            title: title,
            description: description,
            begunAt: begunAt,
            endedAt: endedAt,
            categoryId: categoryId,
            status: status,
            coverImageUrl: coverImageUrl,
            note: note,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuestsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QuestsTable,
    QuestEntity,
    $$QuestsTableFilterComposer,
    $$QuestsTableOrderingComposer,
    $$QuestsTableAnnotationComposer,
    $$QuestsTableCreateCompanionBuilder,
    $$QuestsTableUpdateCompanionBuilder,
    (QuestEntity, BaseReferences<_$AppDatabase, $QuestsTable, QuestEntity>),
    QuestEntity,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$QuestsTableTableManager get quests =>
      $$QuestsTableTableManager(_db, _db.quests);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'e0a487cebcfae17b409135d7bdee7b86c63a8c84';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = Provider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
