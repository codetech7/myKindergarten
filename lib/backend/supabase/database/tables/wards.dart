import '../database.dart';

class WardsTable extends SupabaseTable<WardsRow> {
  @override
  String get tableName => 'Wards';

  @override
  WardsRow createRow(Map<String, dynamic> data) => WardsRow(data);
}

class WardsRow extends SupabaseDataRow {
  WardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  DateTime? get dateOfBirth => getField<DateTime>('date_of_birth');
  set dateOfBirth(DateTime? value) =>
      setField<DateTime>('date_of_birth', value);

  String get guardian => getField<String>('guardian')!;
  set guardian(String value) => setField<String>('guardian', value);

  int? get guardianProfiles => getField<int>('guardian_profiles');
  set guardianProfiles(int? value) => setField<int>('guardian_profiles', value);

  String? get proxyId => getField<String>('proxy_id');
  set proxyId(String? value) => setField<String>('proxy_id', value);

  String? get pickupId => getField<String>('Pickup_id');
  set pickupId(String? value) => setField<String>('Pickup_id', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get medication => getField<String>('medication');
  set medication(String? value) => setField<String>('medication', value);

  String? get realDateOfBirth => getField<String>('RealDateOfBirth');
  set realDateOfBirth(String? value) =>
      setField<String>('RealDateOfBirth', value);

  String? get guardianEmail => getField<String>('Guardian_email');
  set guardianEmail(String? value) => setField<String>('Guardian_email', value);

  String? get authEmail => getField<String>('AuthEmail');
  set authEmail(String? value) => setField<String>('AuthEmail', value);
}
