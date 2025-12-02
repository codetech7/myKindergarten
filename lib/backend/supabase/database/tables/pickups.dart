import '../database.dart';

class PickupsTable extends SupabaseTable<PickupsRow> {
  @override
  String get tableName => 'pickups';

  @override
  PickupsRow createRow(Map<String, dynamic> data) => PickupsRow(data);
}

class PickupsRow extends SupabaseDataRow {
  PickupsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PickupsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get pickupInfo => getField<String>('pickup_info');
  set pickupInfo(String? value) => setField<String>('pickup_info', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get pickupTime => getField<DateTime>('Pickup Time');
  set pickupTime(DateTime? value) => setField<DateTime>('Pickup Time', value);

  String? get wardId => getField<String>('Ward_Id');
  set wardId(String? value) => setField<String>('Ward_Id', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
