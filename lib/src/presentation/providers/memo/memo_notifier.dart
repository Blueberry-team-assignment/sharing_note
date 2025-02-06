import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/models/memo/memo_order.dart';
import 'package:sharing_memo/src/domain/models/memo/order_type.dart';
import 'package:sharing_memo/src/domain/usecases/use_cases.dart';
import 'package:sharing_memo/src/presentation/providers/memo/event/memo_event.dart';
import 'package:sharing_memo/src/presentation/providers/memo/state/memos_state.dart';

final memoNotifierProvider =
    StateNotifierProvider<MemoNotifier, MemosState>((ref) {
  final useCases = ref.watch(usecasesProvider);
  return MemoNotifier(useCases);
});

class MemoNotifier extends StateNotifier<MemosState> {
  final UseCases useCases;
  Memo? _recentlyDeletedMemo;
  MemoNotifier(this.useCases)
      : super(
          MemosState(
            memos: [],
            memoOrder: const MemoOrder.time(OrderType.desc()),
            showOrderSection: false,
          ),
        );

  void onEvent(MemoEvent event) {
    event.when(
      loadMemos: _loadMemos,
      restoreMemo: _restoreMemo,
      deleteMemo: _deleteMemo,
      changeOrder: _changeOrder,
      toggleOrderSection: _toggleOrderSection,
    );
  }

  // 메모 불러오기
  Future<void> _loadMemos() async {
    List<Memo> memos = await useCases.getMemos(state.memoOrder);
    state = state.copyWith(memos: memos);
  }

  // 메모 저장
  Future<void> _restoreMemo() async {
    if (_recentlyDeletedMemo != null) {
      await useCases.addMemo(_recentlyDeletedMemo!);
      _recentlyDeletedMemo = null;
      _loadMemos();
    }
  }

  // 메모 삭제
  Future<void> _deleteMemo(Memo memo) async {
    await useCases.deleteMemo(memo);
    _recentlyDeletedMemo = memo;
    await _loadMemos();
  }

  // 메모 정렬
  Future<void> _changeOrder(MemoOrder memoOrder) async {
    state = state.copyWith(
      memoOrder: memoOrder,
    );
    _loadMemos();
  }

  // 오더 토글링
  Future<void> _toggleOrderSection() async {
    state = state.copyWith(
      showOrderSection: !state.showOrderSection,
    );
  }
}
