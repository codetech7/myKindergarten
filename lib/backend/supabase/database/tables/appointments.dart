import '../database.dart';

class AppointmentsTable extends SupabaseTable<AppointmentsRow> {
  @override
  String get tableName => 'appointments';

  @override
  AppointmentsRow createRow(Map<String, dynamic> data) => AppointmentsRow(data);
}

class AppointmentsRow extends SupabaseDataRow {
  AppointmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppointmentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  DateTime get starting => getField<DateTime>('starting')!;
  set starting(DateTime value) => setField<DateTime>('starting', value);

  DateTime get ending => getField<DateTime>('ending')!;
  set ending(DateTime value) => setField<DateTime>('ending', value);

  String? get reminder => getField<String>('reminder');
  set reminder(String? value) => setField<String>('reminder', value);

  String get ward => getField<String>('ward')!;
  set ward(String value) => setField<String>('ward', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get withField => getField<String>('with');
  set withField(String? value) => setField<String>('with', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
