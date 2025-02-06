import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/models/memo/memo_order.dart';
import 'package:sharing_memo/src/domain/models/memo/order_type.dart';
import 'package:sharing_memo/src/domain/repositories/memo/memo_repository.dart';

class GetMemos {
  final MemoRepository repository;

  GetMemos(this.repository);

  Future<List<Memo>> call(MemoOrder memoOrder) async {
    List<Memo> memos = await repository.getMemos();
    memoOrder.when(
      title: (OrderType orderType) {
        orderType.when(
          desc: () {
            memos.sort((a, b) => -a.title.compareTo(b.title));
          },
          asc: () {
            memos.sort((a, b) => a.title.compareTo(b.title));
          },
        );
      },
      time: (OrderType orderType) {
        orderType.when(
          desc: () {
            memos.sort((a, b) => -a.createdAt.compareTo(b.createdAt));
          },
          asc: () {
            memos.sort((a, b) => a.createdAt.compareTo(b.createdAt));
          },
        );
      },
      color: (OrderType orderType) {
        orderType.when(
          desc: () {
            memos.sort((a, b) => -a.color.compareTo(b.color));
          },
          asc: () {
            memos.sort((a, b) => a.color.compareTo(b.color));
          },
        );
      },
    );
    return memos;
  }
}
