import 'package:sharing_memo/src/domain/models/memo/memo.dart';

abstract class MemoRepository {
  Future<List<Memo>> getMemos();
  Future<Memo?> getMemoById(int id);
  Future<void> addMemo(Memo memo);
  Future<void> updateMemo(Memo memo);
  Future<void> deleteMemo(Memo memo);
  // Stream<List<Memo>> watchMemos();
}
