import 'package:drift/drift.dart';

@DataClassName('QuestEntity')
class Quests extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  DateTimeColumn get begunAt => dateTime().nullable()();
  DateTimeColumn get endedAt => dateTime().nullable()();
  TextColumn get categoryId => text().nullable()();
  TextColumn get status => text()();
  TextColumn get coverImageUrl => text().nullable()();
  TextColumn get note => text().withDefault(const Constant(''))();

  @override
  Set<Column> get primaryKey => {id};
}
