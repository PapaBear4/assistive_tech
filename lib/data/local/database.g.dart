// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WorksheetsTable extends Worksheets
    with TableInfo<$WorksheetsTable, Worksheet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorksheetsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, createdAt, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'worksheets';
  @override
  VerificationContext validateIntegrity(Insertable<Worksheet> instance,
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
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Worksheet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Worksheet(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $WorksheetsTable createAlias(String alias) {
    return $WorksheetsTable(attachedDatabase, alias);
  }
}

class Worksheet extends DataClass implements Insertable<Worksheet> {
  final String id;
  final String title;
  final DateTime createdAt;
  final String status;
  const Worksheet(
      {required this.id,
      required this.title,
      required this.createdAt,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['status'] = Variable<String>(status);
    return map;
  }

  WorksheetsCompanion toCompanion(bool nullToAbsent) {
    return WorksheetsCompanion(
      id: Value(id),
      title: Value(title),
      createdAt: Value(createdAt),
      status: Value(status),
    );
  }

  factory Worksheet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Worksheet(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'status': serializer.toJson<String>(status),
    };
  }

  Worksheet copyWith(
          {String? id, String? title, DateTime? createdAt, String? status}) =>
      Worksheet(
        id: id ?? this.id,
        title: title ?? this.title,
        createdAt: createdAt ?? this.createdAt,
        status: status ?? this.status,
      );
  Worksheet copyWithCompanion(WorksheetsCompanion data) {
    return Worksheet(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Worksheet(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, createdAt, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Worksheet &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdAt == this.createdAt &&
          other.status == this.status);
}

class WorksheetsCompanion extends UpdateCompanion<Worksheet> {
  final Value<String> id;
  final Value<String> title;
  final Value<DateTime> createdAt;
  final Value<String> status;
  final Value<int> rowid;
  const WorksheetsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorksheetsCompanion.insert({
    required String id,
    required String title,
    required DateTime createdAt,
    required String status,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        createdAt = Value(createdAt),
        status = Value(status);
  static Insertable<Worksheet> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<DateTime>? createdAt,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdAt != null) 'created_at': createdAt,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorksheetsCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<DateTime>? createdAt,
      Value<String>? status,
      Value<int>? rowid}) {
    return WorksheetsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
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
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorksheetsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorksheetPagesTable extends WorksheetPages
    with TableInfo<$WorksheetPagesTable, WorksheetPage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorksheetPagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _worksheetIdMeta =
      const VerificationMeta('worksheetId');
  @override
  late final GeneratedColumn<String> worksheetId = GeneratedColumn<String>(
      'worksheet_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES worksheets (id)'));
  static const VerificationMeta _pageIndexMeta =
      const VerificationMeta('pageIndex');
  @override
  late final GeneratedColumn<int> pageIndex = GeneratedColumn<int>(
      'page_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, worksheetId, pageIndex, imagePath, width, height];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'worksheet_pages';
  @override
  VerificationContext validateIntegrity(Insertable<WorksheetPage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('worksheet_id')) {
      context.handle(
          _worksheetIdMeta,
          worksheetId.isAcceptableOrUnknown(
              data['worksheet_id']!, _worksheetIdMeta));
    } else if (isInserting) {
      context.missing(_worksheetIdMeta);
    }
    if (data.containsKey('page_index')) {
      context.handle(_pageIndexMeta,
          pageIndex.isAcceptableOrUnknown(data['page_index']!, _pageIndexMeta));
    } else if (isInserting) {
      context.missing(_pageIndexMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorksheetPage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorksheetPage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      worksheetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}worksheet_id'])!,
      pageIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_index'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
    );
  }

  @override
  $WorksheetPagesTable createAlias(String alias) {
    return $WorksheetPagesTable(attachedDatabase, alias);
  }
}

class WorksheetPage extends DataClass implements Insertable<WorksheetPage> {
  final int id;
  final String worksheetId;
  final int pageIndex;
  final String imagePath;
  final int width;
  final int height;
  const WorksheetPage(
      {required this.id,
      required this.worksheetId,
      required this.pageIndex,
      required this.imagePath,
      required this.width,
      required this.height});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['worksheet_id'] = Variable<String>(worksheetId);
    map['page_index'] = Variable<int>(pageIndex);
    map['image_path'] = Variable<String>(imagePath);
    map['width'] = Variable<int>(width);
    map['height'] = Variable<int>(height);
    return map;
  }

  WorksheetPagesCompanion toCompanion(bool nullToAbsent) {
    return WorksheetPagesCompanion(
      id: Value(id),
      worksheetId: Value(worksheetId),
      pageIndex: Value(pageIndex),
      imagePath: Value(imagePath),
      width: Value(width),
      height: Value(height),
    );
  }

  factory WorksheetPage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorksheetPage(
      id: serializer.fromJson<int>(json['id']),
      worksheetId: serializer.fromJson<String>(json['worksheetId']),
      pageIndex: serializer.fromJson<int>(json['pageIndex']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      width: serializer.fromJson<int>(json['width']),
      height: serializer.fromJson<int>(json['height']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'worksheetId': serializer.toJson<String>(worksheetId),
      'pageIndex': serializer.toJson<int>(pageIndex),
      'imagePath': serializer.toJson<String>(imagePath),
      'width': serializer.toJson<int>(width),
      'height': serializer.toJson<int>(height),
    };
  }

  WorksheetPage copyWith(
          {int? id,
          String? worksheetId,
          int? pageIndex,
          String? imagePath,
          int? width,
          int? height}) =>
      WorksheetPage(
        id: id ?? this.id,
        worksheetId: worksheetId ?? this.worksheetId,
        pageIndex: pageIndex ?? this.pageIndex,
        imagePath: imagePath ?? this.imagePath,
        width: width ?? this.width,
        height: height ?? this.height,
      );
  WorksheetPage copyWithCompanion(WorksheetPagesCompanion data) {
    return WorksheetPage(
      id: data.id.present ? data.id.value : this.id,
      worksheetId:
          data.worksheetId.present ? data.worksheetId.value : this.worksheetId,
      pageIndex: data.pageIndex.present ? data.pageIndex.value : this.pageIndex,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorksheetPage(')
          ..write('id: $id, ')
          ..write('worksheetId: $worksheetId, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('imagePath: $imagePath, ')
          ..write('width: $width, ')
          ..write('height: $height')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, worksheetId, pageIndex, imagePath, width, height);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorksheetPage &&
          other.id == this.id &&
          other.worksheetId == this.worksheetId &&
          other.pageIndex == this.pageIndex &&
          other.imagePath == this.imagePath &&
          other.width == this.width &&
          other.height == this.height);
}

class WorksheetPagesCompanion extends UpdateCompanion<WorksheetPage> {
  final Value<int> id;
  final Value<String> worksheetId;
  final Value<int> pageIndex;
  final Value<String> imagePath;
  final Value<int> width;
  final Value<int> height;
  const WorksheetPagesCompanion({
    this.id = const Value.absent(),
    this.worksheetId = const Value.absent(),
    this.pageIndex = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
  });
  WorksheetPagesCompanion.insert({
    this.id = const Value.absent(),
    required String worksheetId,
    required int pageIndex,
    required String imagePath,
    required int width,
    required int height,
  })  : worksheetId = Value(worksheetId),
        pageIndex = Value(pageIndex),
        imagePath = Value(imagePath),
        width = Value(width),
        height = Value(height);
  static Insertable<WorksheetPage> custom({
    Expression<int>? id,
    Expression<String>? worksheetId,
    Expression<int>? pageIndex,
    Expression<String>? imagePath,
    Expression<int>? width,
    Expression<int>? height,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (worksheetId != null) 'worksheet_id': worksheetId,
      if (pageIndex != null) 'page_index': pageIndex,
      if (imagePath != null) 'image_path': imagePath,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
    });
  }

  WorksheetPagesCompanion copyWith(
      {Value<int>? id,
      Value<String>? worksheetId,
      Value<int>? pageIndex,
      Value<String>? imagePath,
      Value<int>? width,
      Value<int>? height}) {
    return WorksheetPagesCompanion(
      id: id ?? this.id,
      worksheetId: worksheetId ?? this.worksheetId,
      pageIndex: pageIndex ?? this.pageIndex,
      imagePath: imagePath ?? this.imagePath,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (worksheetId.present) {
      map['worksheet_id'] = Variable<String>(worksheetId.value);
    }
    if (pageIndex.present) {
      map['page_index'] = Variable<int>(pageIndex.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorksheetPagesCompanion(')
          ..write('id: $id, ')
          ..write('worksheetId: $worksheetId, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('imagePath: $imagePath, ')
          ..write('width: $width, ')
          ..write('height: $height')
          ..write(')'))
        .toString();
  }
}

class $AnnotationsTable extends Annotations
    with TableInfo<$AnnotationsTable, Annotation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnnotationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pageIdMeta = const VerificationMeta('pageId');
  @override
  late final GeneratedColumn<int> pageId = GeneratedColumn<int>(
      'page_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES worksheet_pages (id)'));
  static const VerificationMeta _xPercentMeta =
      const VerificationMeta('xPercent');
  @override
  late final GeneratedColumn<double> xPercent = GeneratedColumn<double>(
      'x_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _yPercentMeta =
      const VerificationMeta('yPercent');
  @override
  late final GeneratedColumn<double> yPercent = GeneratedColumn<double>(
      'y_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthPercentMeta =
      const VerificationMeta('widthPercent');
  @override
  late final GeneratedColumn<double> widthPercent = GeneratedColumn<double>(
      'width_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _heightPercentMeta =
      const VerificationMeta('heightPercent');
  @override
  late final GeneratedColumn<double> heightPercent = GeneratedColumn<double>(
      'height_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _textContentMeta =
      const VerificationMeta('textContent');
  @override
  late final GeneratedColumn<String> textContent = GeneratedColumn<String>(
      'text_content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _audioPathMeta =
      const VerificationMeta('audioPath');
  @override
  late final GeneratedColumn<String> audioPath = GeneratedColumn<String>(
      'audio_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pageId,
        xPercent,
        yPercent,
        widthPercent,
        heightPercent,
        textContent,
        audioPath
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'annotations';
  @override
  VerificationContext validateIntegrity(Insertable<Annotation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('page_id')) {
      context.handle(_pageIdMeta,
          pageId.isAcceptableOrUnknown(data['page_id']!, _pageIdMeta));
    } else if (isInserting) {
      context.missing(_pageIdMeta);
    }
    if (data.containsKey('x_percent')) {
      context.handle(_xPercentMeta,
          xPercent.isAcceptableOrUnknown(data['x_percent']!, _xPercentMeta));
    } else if (isInserting) {
      context.missing(_xPercentMeta);
    }
    if (data.containsKey('y_percent')) {
      context.handle(_yPercentMeta,
          yPercent.isAcceptableOrUnknown(data['y_percent']!, _yPercentMeta));
    } else if (isInserting) {
      context.missing(_yPercentMeta);
    }
    if (data.containsKey('width_percent')) {
      context.handle(
          _widthPercentMeta,
          widthPercent.isAcceptableOrUnknown(
              data['width_percent']!, _widthPercentMeta));
    } else if (isInserting) {
      context.missing(_widthPercentMeta);
    }
    if (data.containsKey('height_percent')) {
      context.handle(
          _heightPercentMeta,
          heightPercent.isAcceptableOrUnknown(
              data['height_percent']!, _heightPercentMeta));
    } else if (isInserting) {
      context.missing(_heightPercentMeta);
    }
    if (data.containsKey('text_content')) {
      context.handle(
          _textContentMeta,
          textContent.isAcceptableOrUnknown(
              data['text_content']!, _textContentMeta));
    }
    if (data.containsKey('audio_path')) {
      context.handle(_audioPathMeta,
          audioPath.isAcceptableOrUnknown(data['audio_path']!, _audioPathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Annotation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Annotation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_id'])!,
      xPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}x_percent'])!,
      yPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}y_percent'])!,
      widthPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width_percent'])!,
      heightPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height_percent'])!,
      textContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_content']),
      audioPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}audio_path']),
    );
  }

  @override
  $AnnotationsTable createAlias(String alias) {
    return $AnnotationsTable(attachedDatabase, alias);
  }
}

class Annotation extends DataClass implements Insertable<Annotation> {
  final int id;
  final int pageId;
  final double xPercent;
  final double yPercent;
  final double widthPercent;
  final double heightPercent;
  final String? textContent;
  final String? audioPath;
  const Annotation(
      {required this.id,
      required this.pageId,
      required this.xPercent,
      required this.yPercent,
      required this.widthPercent,
      required this.heightPercent,
      this.textContent,
      this.audioPath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['page_id'] = Variable<int>(pageId);
    map['x_percent'] = Variable<double>(xPercent);
    map['y_percent'] = Variable<double>(yPercent);
    map['width_percent'] = Variable<double>(widthPercent);
    map['height_percent'] = Variable<double>(heightPercent);
    if (!nullToAbsent || textContent != null) {
      map['text_content'] = Variable<String>(textContent);
    }
    if (!nullToAbsent || audioPath != null) {
      map['audio_path'] = Variable<String>(audioPath);
    }
    return map;
  }

  AnnotationsCompanion toCompanion(bool nullToAbsent) {
    return AnnotationsCompanion(
      id: Value(id),
      pageId: Value(pageId),
      xPercent: Value(xPercent),
      yPercent: Value(yPercent),
      widthPercent: Value(widthPercent),
      heightPercent: Value(heightPercent),
      textContent: textContent == null && nullToAbsent
          ? const Value.absent()
          : Value(textContent),
      audioPath: audioPath == null && nullToAbsent
          ? const Value.absent()
          : Value(audioPath),
    );
  }

  factory Annotation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Annotation(
      id: serializer.fromJson<int>(json['id']),
      pageId: serializer.fromJson<int>(json['pageId']),
      xPercent: serializer.fromJson<double>(json['xPercent']),
      yPercent: serializer.fromJson<double>(json['yPercent']),
      widthPercent: serializer.fromJson<double>(json['widthPercent']),
      heightPercent: serializer.fromJson<double>(json['heightPercent']),
      textContent: serializer.fromJson<String?>(json['textContent']),
      audioPath: serializer.fromJson<String?>(json['audioPath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pageId': serializer.toJson<int>(pageId),
      'xPercent': serializer.toJson<double>(xPercent),
      'yPercent': serializer.toJson<double>(yPercent),
      'widthPercent': serializer.toJson<double>(widthPercent),
      'heightPercent': serializer.toJson<double>(heightPercent),
      'textContent': serializer.toJson<String?>(textContent),
      'audioPath': serializer.toJson<String?>(audioPath),
    };
  }

  Annotation copyWith(
          {int? id,
          int? pageId,
          double? xPercent,
          double? yPercent,
          double? widthPercent,
          double? heightPercent,
          Value<String?> textContent = const Value.absent(),
          Value<String?> audioPath = const Value.absent()}) =>
      Annotation(
        id: id ?? this.id,
        pageId: pageId ?? this.pageId,
        xPercent: xPercent ?? this.xPercent,
        yPercent: yPercent ?? this.yPercent,
        widthPercent: widthPercent ?? this.widthPercent,
        heightPercent: heightPercent ?? this.heightPercent,
        textContent: textContent.present ? textContent.value : this.textContent,
        audioPath: audioPath.present ? audioPath.value : this.audioPath,
      );
  Annotation copyWithCompanion(AnnotationsCompanion data) {
    return Annotation(
      id: data.id.present ? data.id.value : this.id,
      pageId: data.pageId.present ? data.pageId.value : this.pageId,
      xPercent: data.xPercent.present ? data.xPercent.value : this.xPercent,
      yPercent: data.yPercent.present ? data.yPercent.value : this.yPercent,
      widthPercent: data.widthPercent.present
          ? data.widthPercent.value
          : this.widthPercent,
      heightPercent: data.heightPercent.present
          ? data.heightPercent.value
          : this.heightPercent,
      textContent:
          data.textContent.present ? data.textContent.value : this.textContent,
      audioPath: data.audioPath.present ? data.audioPath.value : this.audioPath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Annotation(')
          ..write('id: $id, ')
          ..write('pageId: $pageId, ')
          ..write('xPercent: $xPercent, ')
          ..write('yPercent: $yPercent, ')
          ..write('widthPercent: $widthPercent, ')
          ..write('heightPercent: $heightPercent, ')
          ..write('textContent: $textContent, ')
          ..write('audioPath: $audioPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pageId, xPercent, yPercent, widthPercent,
      heightPercent, textContent, audioPath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Annotation &&
          other.id == this.id &&
          other.pageId == this.pageId &&
          other.xPercent == this.xPercent &&
          other.yPercent == this.yPercent &&
          other.widthPercent == this.widthPercent &&
          other.heightPercent == this.heightPercent &&
          other.textContent == this.textContent &&
          other.audioPath == this.audioPath);
}

class AnnotationsCompanion extends UpdateCompanion<Annotation> {
  final Value<int> id;
  final Value<int> pageId;
  final Value<double> xPercent;
  final Value<double> yPercent;
  final Value<double> widthPercent;
  final Value<double> heightPercent;
  final Value<String?> textContent;
  final Value<String?> audioPath;
  const AnnotationsCompanion({
    this.id = const Value.absent(),
    this.pageId = const Value.absent(),
    this.xPercent = const Value.absent(),
    this.yPercent = const Value.absent(),
    this.widthPercent = const Value.absent(),
    this.heightPercent = const Value.absent(),
    this.textContent = const Value.absent(),
    this.audioPath = const Value.absent(),
  });
  AnnotationsCompanion.insert({
    this.id = const Value.absent(),
    required int pageId,
    required double xPercent,
    required double yPercent,
    required double widthPercent,
    required double heightPercent,
    this.textContent = const Value.absent(),
    this.audioPath = const Value.absent(),
  })  : pageId = Value(pageId),
        xPercent = Value(xPercent),
        yPercent = Value(yPercent),
        widthPercent = Value(widthPercent),
        heightPercent = Value(heightPercent);
  static Insertable<Annotation> custom({
    Expression<int>? id,
    Expression<int>? pageId,
    Expression<double>? xPercent,
    Expression<double>? yPercent,
    Expression<double>? widthPercent,
    Expression<double>? heightPercent,
    Expression<String>? textContent,
    Expression<String>? audioPath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pageId != null) 'page_id': pageId,
      if (xPercent != null) 'x_percent': xPercent,
      if (yPercent != null) 'y_percent': yPercent,
      if (widthPercent != null) 'width_percent': widthPercent,
      if (heightPercent != null) 'height_percent': heightPercent,
      if (textContent != null) 'text_content': textContent,
      if (audioPath != null) 'audio_path': audioPath,
    });
  }

  AnnotationsCompanion copyWith(
      {Value<int>? id,
      Value<int>? pageId,
      Value<double>? xPercent,
      Value<double>? yPercent,
      Value<double>? widthPercent,
      Value<double>? heightPercent,
      Value<String?>? textContent,
      Value<String?>? audioPath}) {
    return AnnotationsCompanion(
      id: id ?? this.id,
      pageId: pageId ?? this.pageId,
      xPercent: xPercent ?? this.xPercent,
      yPercent: yPercent ?? this.yPercent,
      widthPercent: widthPercent ?? this.widthPercent,
      heightPercent: heightPercent ?? this.heightPercent,
      textContent: textContent ?? this.textContent,
      audioPath: audioPath ?? this.audioPath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pageId.present) {
      map['page_id'] = Variable<int>(pageId.value);
    }
    if (xPercent.present) {
      map['x_percent'] = Variable<double>(xPercent.value);
    }
    if (yPercent.present) {
      map['y_percent'] = Variable<double>(yPercent.value);
    }
    if (widthPercent.present) {
      map['width_percent'] = Variable<double>(widthPercent.value);
    }
    if (heightPercent.present) {
      map['height_percent'] = Variable<double>(heightPercent.value);
    }
    if (textContent.present) {
      map['text_content'] = Variable<String>(textContent.value);
    }
    if (audioPath.present) {
      map['audio_path'] = Variable<String>(audioPath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnnotationsCompanion(')
          ..write('id: $id, ')
          ..write('pageId: $pageId, ')
          ..write('xPercent: $xPercent, ')
          ..write('yPercent: $yPercent, ')
          ..write('widthPercent: $widthPercent, ')
          ..write('heightPercent: $heightPercent, ')
          ..write('textContent: $textContent, ')
          ..write('audioPath: $audioPath')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WorksheetsTable worksheets = $WorksheetsTable(this);
  late final $WorksheetPagesTable worksheetPages = $WorksheetPagesTable(this);
  late final $AnnotationsTable annotations = $AnnotationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [worksheets, worksheetPages, annotations];
}

typedef $$WorksheetsTableCreateCompanionBuilder = WorksheetsCompanion Function({
  required String id,
  required String title,
  required DateTime createdAt,
  required String status,
  Value<int> rowid,
});
typedef $$WorksheetsTableUpdateCompanionBuilder = WorksheetsCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<DateTime> createdAt,
  Value<String> status,
  Value<int> rowid,
});

final class $$WorksheetsTableReferences
    extends BaseReferences<_$AppDatabase, $WorksheetsTable, Worksheet> {
  $$WorksheetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$WorksheetPagesTable, List<WorksheetPage>>
      _worksheetPagesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.worksheetPages,
              aliasName: $_aliasNameGenerator(
                  db.worksheets.id, db.worksheetPages.worksheetId));

  $$WorksheetPagesTableProcessedTableManager get worksheetPagesRefs {
    final manager = $$WorksheetPagesTableTableManager($_db, $_db.worksheetPages)
        .filter((f) => f.worksheetId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_worksheetPagesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WorksheetsTableFilterComposer
    extends Composer<_$AppDatabase, $WorksheetsTable> {
  $$WorksheetsTableFilterComposer({
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

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  Expression<bool> worksheetPagesRefs(
      Expression<bool> Function($$WorksheetPagesTableFilterComposer f) f) {
    final $$WorksheetPagesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.worksheetPages,
        getReferencedColumn: (t) => t.worksheetId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetPagesTableFilterComposer(
              $db: $db,
              $table: $db.worksheetPages,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WorksheetsTableOrderingComposer
    extends Composer<_$AppDatabase, $WorksheetsTable> {
  $$WorksheetsTableOrderingComposer({
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

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));
}

class $$WorksheetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorksheetsTable> {
  $$WorksheetsTableAnnotationComposer({
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

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  Expression<T> worksheetPagesRefs<T extends Object>(
      Expression<T> Function($$WorksheetPagesTableAnnotationComposer a) f) {
    final $$WorksheetPagesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.worksheetPages,
        getReferencedColumn: (t) => t.worksheetId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetPagesTableAnnotationComposer(
              $db: $db,
              $table: $db.worksheetPages,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WorksheetsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WorksheetsTable,
    Worksheet,
    $$WorksheetsTableFilterComposer,
    $$WorksheetsTableOrderingComposer,
    $$WorksheetsTableAnnotationComposer,
    $$WorksheetsTableCreateCompanionBuilder,
    $$WorksheetsTableUpdateCompanionBuilder,
    (Worksheet, $$WorksheetsTableReferences),
    Worksheet,
    PrefetchHooks Function({bool worksheetPagesRefs})> {
  $$WorksheetsTableTableManager(_$AppDatabase db, $WorksheetsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorksheetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorksheetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorksheetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WorksheetsCompanion(
            id: id,
            title: title,
            createdAt: createdAt,
            status: status,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            required DateTime createdAt,
            required String status,
            Value<int> rowid = const Value.absent(),
          }) =>
              WorksheetsCompanion.insert(
            id: id,
            title: title,
            createdAt: createdAt,
            status: status,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$WorksheetsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({worksheetPagesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (worksheetPagesRefs) db.worksheetPages
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (worksheetPagesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$WorksheetsTableReferences
                            ._worksheetPagesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WorksheetsTableReferences(db, table, p0)
                                .worksheetPagesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.worksheetId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WorksheetsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WorksheetsTable,
    Worksheet,
    $$WorksheetsTableFilterComposer,
    $$WorksheetsTableOrderingComposer,
    $$WorksheetsTableAnnotationComposer,
    $$WorksheetsTableCreateCompanionBuilder,
    $$WorksheetsTableUpdateCompanionBuilder,
    (Worksheet, $$WorksheetsTableReferences),
    Worksheet,
    PrefetchHooks Function({bool worksheetPagesRefs})>;
typedef $$WorksheetPagesTableCreateCompanionBuilder = WorksheetPagesCompanion
    Function({
  Value<int> id,
  required String worksheetId,
  required int pageIndex,
  required String imagePath,
  required int width,
  required int height,
});
typedef $$WorksheetPagesTableUpdateCompanionBuilder = WorksheetPagesCompanion
    Function({
  Value<int> id,
  Value<String> worksheetId,
  Value<int> pageIndex,
  Value<String> imagePath,
  Value<int> width,
  Value<int> height,
});

final class $$WorksheetPagesTableReferences
    extends BaseReferences<_$AppDatabase, $WorksheetPagesTable, WorksheetPage> {
  $$WorksheetPagesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $WorksheetsTable _worksheetIdTable(_$AppDatabase db) =>
      db.worksheets.createAlias($_aliasNameGenerator(
          db.worksheetPages.worksheetId, db.worksheets.id));

  $$WorksheetsTableProcessedTableManager? get worksheetId {
    if ($_item.worksheetId == null) return null;
    final manager = $$WorksheetsTableTableManager($_db, $_db.worksheets)
        .filter((f) => f.id($_item.worksheetId!));
    final item = $_typedResult.readTableOrNull(_worksheetIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$AnnotationsTable, List<Annotation>>
      _annotationsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.annotations,
              aliasName: $_aliasNameGenerator(
                  db.worksheetPages.id, db.annotations.pageId));

  $$AnnotationsTableProcessedTableManager get annotationsRefs {
    final manager = $$AnnotationsTableTableManager($_db, $_db.annotations)
        .filter((f) => f.pageId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_annotationsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WorksheetPagesTableFilterComposer
    extends Composer<_$AppDatabase, $WorksheetPagesTable> {
  $$WorksheetPagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageIndex => $composableBuilder(
      column: $table.pageIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  $$WorksheetsTableFilterComposer get worksheetId {
    final $$WorksheetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.worksheetId,
        referencedTable: $db.worksheets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetsTableFilterComposer(
              $db: $db,
              $table: $db.worksheets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> annotationsRefs(
      Expression<bool> Function($$AnnotationsTableFilterComposer f) f) {
    final $$AnnotationsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.annotations,
        getReferencedColumn: (t) => t.pageId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnnotationsTableFilterComposer(
              $db: $db,
              $table: $db.annotations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WorksheetPagesTableOrderingComposer
    extends Composer<_$AppDatabase, $WorksheetPagesTable> {
  $$WorksheetPagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageIndex => $composableBuilder(
      column: $table.pageIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  $$WorksheetsTableOrderingComposer get worksheetId {
    final $$WorksheetsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.worksheetId,
        referencedTable: $db.worksheets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetsTableOrderingComposer(
              $db: $db,
              $table: $db.worksheets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WorksheetPagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorksheetPagesTable> {
  $$WorksheetPagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pageIndex =>
      $composableBuilder(column: $table.pageIndex, builder: (column) => column);

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  $$WorksheetsTableAnnotationComposer get worksheetId {
    final $$WorksheetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.worksheetId,
        referencedTable: $db.worksheets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetsTableAnnotationComposer(
              $db: $db,
              $table: $db.worksheets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> annotationsRefs<T extends Object>(
      Expression<T> Function($$AnnotationsTableAnnotationComposer a) f) {
    final $$AnnotationsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.annotations,
        getReferencedColumn: (t) => t.pageId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnnotationsTableAnnotationComposer(
              $db: $db,
              $table: $db.annotations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WorksheetPagesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WorksheetPagesTable,
    WorksheetPage,
    $$WorksheetPagesTableFilterComposer,
    $$WorksheetPagesTableOrderingComposer,
    $$WorksheetPagesTableAnnotationComposer,
    $$WorksheetPagesTableCreateCompanionBuilder,
    $$WorksheetPagesTableUpdateCompanionBuilder,
    (WorksheetPage, $$WorksheetPagesTableReferences),
    WorksheetPage,
    PrefetchHooks Function({bool worksheetId, bool annotationsRefs})> {
  $$WorksheetPagesTableTableManager(
      _$AppDatabase db, $WorksheetPagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorksheetPagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorksheetPagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorksheetPagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> worksheetId = const Value.absent(),
            Value<int> pageIndex = const Value.absent(),
            Value<String> imagePath = const Value.absent(),
            Value<int> width = const Value.absent(),
            Value<int> height = const Value.absent(),
          }) =>
              WorksheetPagesCompanion(
            id: id,
            worksheetId: worksheetId,
            pageIndex: pageIndex,
            imagePath: imagePath,
            width: width,
            height: height,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String worksheetId,
            required int pageIndex,
            required String imagePath,
            required int width,
            required int height,
          }) =>
              WorksheetPagesCompanion.insert(
            id: id,
            worksheetId: worksheetId,
            pageIndex: pageIndex,
            imagePath: imagePath,
            width: width,
            height: height,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$WorksheetPagesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {worksheetId = false, annotationsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (annotationsRefs) db.annotations],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (worksheetId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.worksheetId,
                    referencedTable:
                        $$WorksheetPagesTableReferences._worksheetIdTable(db),
                    referencedColumn: $$WorksheetPagesTableReferences
                        ._worksheetIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (annotationsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$WorksheetPagesTableReferences
                            ._annotationsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WorksheetPagesTableReferences(db, table, p0)
                                .annotationsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.pageId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WorksheetPagesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WorksheetPagesTable,
    WorksheetPage,
    $$WorksheetPagesTableFilterComposer,
    $$WorksheetPagesTableOrderingComposer,
    $$WorksheetPagesTableAnnotationComposer,
    $$WorksheetPagesTableCreateCompanionBuilder,
    $$WorksheetPagesTableUpdateCompanionBuilder,
    (WorksheetPage, $$WorksheetPagesTableReferences),
    WorksheetPage,
    PrefetchHooks Function({bool worksheetId, bool annotationsRefs})>;
typedef $$AnnotationsTableCreateCompanionBuilder = AnnotationsCompanion
    Function({
  Value<int> id,
  required int pageId,
  required double xPercent,
  required double yPercent,
  required double widthPercent,
  required double heightPercent,
  Value<String?> textContent,
  Value<String?> audioPath,
});
typedef $$AnnotationsTableUpdateCompanionBuilder = AnnotationsCompanion
    Function({
  Value<int> id,
  Value<int> pageId,
  Value<double> xPercent,
  Value<double> yPercent,
  Value<double> widthPercent,
  Value<double> heightPercent,
  Value<String?> textContent,
  Value<String?> audioPath,
});

final class $$AnnotationsTableReferences
    extends BaseReferences<_$AppDatabase, $AnnotationsTable, Annotation> {
  $$AnnotationsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WorksheetPagesTable _pageIdTable(_$AppDatabase db) =>
      db.worksheetPages.createAlias(
          $_aliasNameGenerator(db.annotations.pageId, db.worksheetPages.id));

  $$WorksheetPagesTableProcessedTableManager? get pageId {
    if ($_item.pageId == null) return null;
    final manager = $$WorksheetPagesTableTableManager($_db, $_db.worksheetPages)
        .filter((f) => f.id($_item.pageId!));
    final item = $_typedResult.readTableOrNull(_pageIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AnnotationsTableFilterComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get xPercent => $composableBuilder(
      column: $table.xPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get yPercent => $composableBuilder(
      column: $table.yPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get widthPercent => $composableBuilder(
      column: $table.widthPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get heightPercent => $composableBuilder(
      column: $table.heightPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textContent => $composableBuilder(
      column: $table.textContent, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get audioPath => $composableBuilder(
      column: $table.audioPath, builder: (column) => ColumnFilters(column));

  $$WorksheetPagesTableFilterComposer get pageId {
    final $$WorksheetPagesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pageId,
        referencedTable: $db.worksheetPages,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetPagesTableFilterComposer(
              $db: $db,
              $table: $db.worksheetPages,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AnnotationsTableOrderingComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get xPercent => $composableBuilder(
      column: $table.xPercent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get yPercent => $composableBuilder(
      column: $table.yPercent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get widthPercent => $composableBuilder(
      column: $table.widthPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get heightPercent => $composableBuilder(
      column: $table.heightPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textContent => $composableBuilder(
      column: $table.textContent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get audioPath => $composableBuilder(
      column: $table.audioPath, builder: (column) => ColumnOrderings(column));

  $$WorksheetPagesTableOrderingComposer get pageId {
    final $$WorksheetPagesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pageId,
        referencedTable: $db.worksheetPages,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetPagesTableOrderingComposer(
              $db: $db,
              $table: $db.worksheetPages,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AnnotationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get xPercent =>
      $composableBuilder(column: $table.xPercent, builder: (column) => column);

  GeneratedColumn<double> get yPercent =>
      $composableBuilder(column: $table.yPercent, builder: (column) => column);

  GeneratedColumn<double> get widthPercent => $composableBuilder(
      column: $table.widthPercent, builder: (column) => column);

  GeneratedColumn<double> get heightPercent => $composableBuilder(
      column: $table.heightPercent, builder: (column) => column);

  GeneratedColumn<String> get textContent => $composableBuilder(
      column: $table.textContent, builder: (column) => column);

  GeneratedColumn<String> get audioPath =>
      $composableBuilder(column: $table.audioPath, builder: (column) => column);

  $$WorksheetPagesTableAnnotationComposer get pageId {
    final $$WorksheetPagesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pageId,
        referencedTable: $db.worksheetPages,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WorksheetPagesTableAnnotationComposer(
              $db: $db,
              $table: $db.worksheetPages,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AnnotationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnnotationsTable,
    Annotation,
    $$AnnotationsTableFilterComposer,
    $$AnnotationsTableOrderingComposer,
    $$AnnotationsTableAnnotationComposer,
    $$AnnotationsTableCreateCompanionBuilder,
    $$AnnotationsTableUpdateCompanionBuilder,
    (Annotation, $$AnnotationsTableReferences),
    Annotation,
    PrefetchHooks Function({bool pageId})> {
  $$AnnotationsTableTableManager(_$AppDatabase db, $AnnotationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnnotationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnnotationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnnotationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> pageId = const Value.absent(),
            Value<double> xPercent = const Value.absent(),
            Value<double> yPercent = const Value.absent(),
            Value<double> widthPercent = const Value.absent(),
            Value<double> heightPercent = const Value.absent(),
            Value<String?> textContent = const Value.absent(),
            Value<String?> audioPath = const Value.absent(),
          }) =>
              AnnotationsCompanion(
            id: id,
            pageId: pageId,
            xPercent: xPercent,
            yPercent: yPercent,
            widthPercent: widthPercent,
            heightPercent: heightPercent,
            textContent: textContent,
            audioPath: audioPath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int pageId,
            required double xPercent,
            required double yPercent,
            required double widthPercent,
            required double heightPercent,
            Value<String?> textContent = const Value.absent(),
            Value<String?> audioPath = const Value.absent(),
          }) =>
              AnnotationsCompanion.insert(
            id: id,
            pageId: pageId,
            xPercent: xPercent,
            yPercent: yPercent,
            widthPercent: widthPercent,
            heightPercent: heightPercent,
            textContent: textContent,
            audioPath: audioPath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AnnotationsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({pageId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (pageId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.pageId,
                    referencedTable:
                        $$AnnotationsTableReferences._pageIdTable(db),
                    referencedColumn:
                        $$AnnotationsTableReferences._pageIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AnnotationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AnnotationsTable,
    Annotation,
    $$AnnotationsTableFilterComposer,
    $$AnnotationsTableOrderingComposer,
    $$AnnotationsTableAnnotationComposer,
    $$AnnotationsTableCreateCompanionBuilder,
    $$AnnotationsTableUpdateCompanionBuilder,
    (Annotation, $$AnnotationsTableReferences),
    Annotation,
    PrefetchHooks Function({bool pageId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WorksheetsTableTableManager get worksheets =>
      $$WorksheetsTableTableManager(_db, _db.worksheets);
  $$WorksheetPagesTableTableManager get worksheetPages =>
      $$WorksheetPagesTableTableManager(_db, _db.worksheetPages);
  $$AnnotationsTableTableManager get annotations =>
      $$AnnotationsTableTableManager(_db, _db.annotations);
}
