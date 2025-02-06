import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';
import 'package:sharing_memo/src/domain/models/memo/memo_order.dart';

part 'memo_event.freezed.dart';

@freezed
abstract class MemoEvent with _$MemoEvent {
  const factory MemoEvent.loadMemos() = LoadMemos;
  const factory MemoEvent.restoreMemo() = RestoreMemo;
  const factory MemoEvent.deleteMemo(Memo memo) = DeleteMemo;
  const factory MemoEvent.changeOrder(MemoOrder memoOrder) = ChangeOrder;
  const factory MemoEvent.toggleOrderSection() = ToggleOrderSection;
}
