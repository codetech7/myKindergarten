import '../database.dart';

class WardsNullTable extends SupabaseTable<WardsNullRow> {
  @override
  String get tableName => 'wards null';

  @override
  WardsNullRow createRow(Map<String, dynamic> data) => WardsNullRow(data);
}

class WardsNullRow extends SupabaseDataRow {
  WardsNullRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WardsNullTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
