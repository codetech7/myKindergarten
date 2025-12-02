import '../database.dart';

class FoodTable extends SupabaseTable<FoodRow> {
  @override
  String get tableName => 'Food';

  @override
  FoodRow createRow(Map<String, dynamic> data) => FoodRow(data);
}

class FoodRow extends SupabaseDataRow {
  FoodRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FoodTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  List<String> get allergies => getListField<String>('allergies');
  set allergies(List<String>? value) =>
      setListField<String>('allergies', value);

  List<String> get ingredients => getListField<String>('ingredients');
  set ingredients(List<String>? value) =>
      setListField<String>('ingredients', value);

  String get mealType => getField<String>('meal_type')!;
  set mealType(String value) => setField<String>('meal_type', value);
}
