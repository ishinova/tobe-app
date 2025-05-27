import 'package:core_database_drift/drift.dart';
import 'package:core_database_drift/src/quest/extension/quest_extensions.dart';
import 'package:core_model/quest.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

void main() {
  group('DriftDatabase', () {
    late AppDatabase database;

    setUp(() {
      database = AppDatabase(NativeDatabase.memory());
    });

    tearDown(() async {
      await database.close();
    });

    test('should create database', () {
      expect(database, isNotNull);
      expect(database.schemaVersion, equals(1));
    });

    test('should insert and retrieve quest', () async {
      final quest = Quest(
        id: 'test-id',
        title: 'Test Quest',
        description: 'Test Description',
        begunAt: DateTime.now(),
        endedAt: null,
        categoryId: 'test-category',
        status: QuestStatus.inProgress,
        coverImageUrl: 'https://example.com/image.jpg',
        note: 'Test note',
      );

      // Insert
      await database.into(database.quests).insert(quest.toCompanion());

      // Retrieve
      final retrieved = await database.select(database.quests).getSingle();
      expect(retrieved.id, equals(quest.id));
      expect(retrieved.title, equals(quest.title));
      expect(retrieved.description, equals(quest.description));
      expect(retrieved.status, equals(quest.status.name));
    });

    test('should stream quests', () async {
      final quest = Quest(
        id: 'stream-test',
        title: 'Stream Test',
        description: 'Stream Description',
        begunAt: null,
        endedAt: null,
        categoryId: null,
        status: QuestStatus.ready,
        coverImageUrl: null,
        note: '',
      );

      // Stream should emit empty list initially
      final stream = database.select(database.quests).watch();
      
      await expectLater(
        stream.first,
        completion(isEmpty),
      );

      // Insert quest
      await database.into(database.quests).insert(quest.toCompanion());

      // Stream should emit the quest
      await expectLater(
        stream.first,
        completion(hasLength(1)),
      );
    });
  });
}