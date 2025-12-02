import '../database.dart';

class MedicationTable extends SupabaseTable<MedicationRow> {
  @override
  String get tableName => 'medication';

  @override
  MedicationRow createRow(Map<String, dynamic> data) => MedicationRow(data);
}

class MedicationRow extends SupabaseDataRow {
  MedicationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get medicationName => getField<String>('medication_name')!;
  set medicationName(String value) =>
      setField<String>('medication_name', value);

  String get dosage => getField<String>('dosage')!;
  set dosage(String value) => setField<String>('dosage', value);

  String? get frequency => getField<String>('frequency');
  set frequency(String? value) => setField<String>('frequency', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get ward => getField<String>('ward');
  set ward(String? value) => setField<String>('ward', value);
}
