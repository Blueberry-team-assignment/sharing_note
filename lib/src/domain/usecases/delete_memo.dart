import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

class DeleteMemo {
  final MemoRepository repository;

  DeleteMemo(this.repository);

  Future<void> call(Memo memo) async {
    await repository.deleteMemo(memo);
  }
}
