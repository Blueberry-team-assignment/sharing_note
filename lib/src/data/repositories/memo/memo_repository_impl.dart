import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/data/data_source/memo_db_helper.dart';

import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

final memoRepositoryProvider = Provider<MemoRepository>((ref) {
  final dbHelper = ref.watch(memoDbHelperProvider);
  return MemoRepositoryImpl(dbHelper);
});

class MemoRepositoryImpl implements MemoRepository {
  final MemoDbHelper db;
  MemoRepositoryImpl(this.db);
  @override
  Future<Memo?> getMemoById(int id) async {
    return db.getMemoById(id);
  }

  @override
  Future<List<Memo>> getMemos() async {
    return await db.getMemos();
  }

  @override
  Future<void> addMemo(Memo memo) async {
    await db.addMemo(memo);
  }

  @override
  Future<void> updateMemo(Memo memo) async {
    await db.updateMemo(memo);
  }

  @override
  Future<void> deleteMemo(Memo memo) async {
    await db.deleteMemo(memo);
  }
}
