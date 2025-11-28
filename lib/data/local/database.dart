import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Worksheets extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get status => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class WorksheetPages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get worksheetId => text().references(Worksheets, #id)();
  IntColumn get pageIndex => integer()();
  TextColumn get imagePath => text()();
  IntColumn get width => integer()();
  IntColumn get height => integer()();
}

class Annotations extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pageId => integer().references(WorksheetPages, #id)();
  RealColumn get xPercent => real()();
  RealColumn get yPercent => real()();
  RealColumn get widthPercent => real()();
  RealColumn get heightPercent => real()();
  TextColumn get textContent => text().nullable()();
  TextColumn get audioPath => text().nullable()();
}

@DriftDatabase(tables: [Worksheets, WorksheetPages, Annotations])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
