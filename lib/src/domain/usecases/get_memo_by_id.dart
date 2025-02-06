import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

class GetMemoById {
  final MemoRepository repository;

  GetMemoById(this.repository);

  Future<Memo?> call(int id) async {
    final memo = await repository.getMemoById(id);
    return memo;
  }
}
