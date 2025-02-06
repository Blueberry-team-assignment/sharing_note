import 'package:sharing_memo/src/data/data_source/memo_db_helpder.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

class MemoRepositoryImpl implements MemoRepository {
  final MemoDbHelpder db;
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
