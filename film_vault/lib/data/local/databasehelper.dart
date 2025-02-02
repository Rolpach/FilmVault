import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:film_vault/data/local/database.dart';

@DriftDatabase(tables: [title, favorite])
class AppDatabase extends _$AppDatabase {
  // Constructor
  AppDatabase(QueryExecutor e) : super(e);

  // Crear el esquema en la base de datos
  @override
  int get schemaVersion => 1;

  // Ejemplo de funciones para interactuar con las tablas

  Future<List<Title>> getAllTitles() async {
    return await select(titles).get();
  }

  Future<int> addTitle(Insertable<Title> title) async {
    return await into(titles).insert(title);
  }

  Future<int> addFavorite(Insertable<Favorite> favorite) async {
    return await into(favorites).insert(favorite);
  }

  Future<void> updateTitle(Title title) async {
    update(titles).replace(title);
  }

  Future<void> deleteTitle(int id) async {
    (delete(titles)..where((tbl) => tbl.id.equals(id))).go();
  }
}