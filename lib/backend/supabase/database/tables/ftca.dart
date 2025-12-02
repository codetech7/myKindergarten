import '../database.dart';

class FtcaTable extends SupabaseTable<FtcaRow> {
  @override
  String get tableName => 'ftca';

  @override
  FtcaRow createRow(Map<String, dynamic> data) => FtcaRow(data);
}

class FtcaRow extends SupabaseDataRow {
  FtcaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FtcaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
