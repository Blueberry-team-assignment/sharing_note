import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final dbProvider = FutureProvider<Database>((ref) async {
  final SqliteService sqliteService = SqliteService();
  return await sqliteService.initialize();
});

class SqliteService {
  Future<Database> initialize() async {
    final path = join(await getDatabasesPath(), 'memo.db');
    const sql =
        'CREATE TABLE memo (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color NUM, createdAt TEXT)';
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(sql);
      },
    );
  }
}
