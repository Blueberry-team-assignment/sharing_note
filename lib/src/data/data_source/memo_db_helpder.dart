import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sqflite/sqflite.dart';

enum TableName { memo }

class MemoDbHelpder {
  Database db;
  MemoDbHelpder(this.db);

  // 1. id로 memo 가지고 오는 로직
  Future<Memo?> getMemoById(int id) async {
    // SELECT * FROM MEMO WHERE ID = 1
    final List<Map<String, dynamic>> memos = await db.query(
      'memo',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (memos.isEmpty) {
      return null;
    }
    return Memo.fromJson(memos.first);
  }

  // 2. 전체 memo를 가지고 오는 로직
  Future<List<Memo>> getMemos() async {
    final memos = await db.query('memo');
    return memos.map((memo) => Memo.fromJson(memo)).toList();
  }

  // 3. add memo
  Future<void> addMemo(Memo memo) async {
    await db.insert('memo', memo.toJson());
  }

  // 4. memo의 id로 memo를 업데이트하는 로직
  Future<void> updateMemo(Memo memo) async {
    await db.update(
      'memo',
      memo.toJson(),
      where: 'id = ?',
      whereArgs: [memo.id],
    );
  }

  // 5. memo의 id로 memo를 삭제하는 로직
  Future<void> deleteMemo(Memo memo) async {
    await db.delete(
      'memo',
      where: 'id = ?',
      whereArgs: [memo.id],
    );
  }
}
