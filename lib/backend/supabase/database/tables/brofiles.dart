import '../database.dart';

class BrofilesTable extends SupabaseTable<BrofilesRow> {
  @override
  String get tableName => 'brofiles';

  @override
  BrofilesRow createRow(Map<String, dynamic> data) => BrofilesRow(data);
}

class BrofilesRow extends SupabaseDataRow {
  BrofilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrofilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
