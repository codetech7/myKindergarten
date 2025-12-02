import '../database.dart';

class GuardiansTable extends SupabaseTable<GuardiansRow> {
  @override
  String get tableName => 'guardians';

  @override
  GuardiansRow createRow(Map<String, dynamic> data) => GuardiansRow(data);
}

class GuardiansRow extends SupabaseDataRow {
  GuardiansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuardiansTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get contact => getField<String>('contact')!;
  set contact(String value) => setField<String>('contact', value);

  String get fullName => getField<String>('full_name')!;
  set fullName(String value) => setField<String>('full_name', value);

  String? get relationship => getField<String>('relationship');
  set relationship(String? value) => setField<String>('relationship', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get profileImagetext => getField<String>('profile_image(text)');
  set profileImagetext(String? value) =>
      setField<String>('profile_image(text)', value);

  String? get guardianEmail => getField<String>('Guardian_Email');
  set guardianEmail(String? value) => setField<String>('Guardian_Email', value);
}
