import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/models/memo/memo_order.dart';

part 'memos_state.freezed.dart';

@freezed
class MemosState with _$MemosState {
  factory MemosState({
    required List<Memo> memos,
    required MemoOrder memoOrder,
    required bool showOrderSection,
  }) = _MemosState;
}
