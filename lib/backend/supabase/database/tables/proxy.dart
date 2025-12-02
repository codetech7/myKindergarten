import '../database.dart';

class ProxyTable extends SupabaseTable<ProxyRow> {
  @override
  String get tableName => 'proxy';

  @override
  ProxyRow createRow(Map<String, dynamic> data) => ProxyRow(data);
}

class ProxyRow extends SupabaseDataRow {
  ProxyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProxyTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get relationship => getField<String>('relationship')!;
  set relationship(String value) => setField<String>('relationship', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phoneContact => getField<String>('phone_contact');
  set phoneContact(String? value) => setField<String>('phone_contact', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
