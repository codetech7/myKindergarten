import '../database.dart';

class AbsenceTable extends SupabaseTable<AbsenceRow> {
  @override
  String get tableName => 'absence';

  @override
  AbsenceRow createRow(Map<String, dynamic> data) => AbsenceRow(data);
}

class AbsenceRow extends SupabaseDataRow {
  AbsenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AbsenceTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get details => getField<String>('details')!;
  set details(String value) => setField<String>('details', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  String get duration => getField<String>('duration')!;
  set duration(String value) => setField<String>('duration', value);
}
