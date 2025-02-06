import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

class UpdateMemo {
  final MemoRepository repository;

  UpdateMemo(this.repository);

  Future<void> call(Memo memo) async {
    await repository.updateMemo(memo);
  }
}
