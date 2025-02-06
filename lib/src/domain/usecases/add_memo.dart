import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

// final addMemoProvider = Provider((ref) => AddMemo(ref.watch(memoRe)));

class AddMemo {
  final MemoRepository repository;
  AddMemo(this.repository);

  Future<void> call(Memo memo) async {
    await repository.addMemo(memo);
  }
}
