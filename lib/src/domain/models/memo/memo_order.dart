import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_memo/src/domain/models/memo/order_type.dart';

part 'memo_order.freezed.dart';

@freezed
abstract class MemoOrder with _$MemoOrder {
  const factory MemoOrder.title(OrderType orderType) = MemoOrderByTitle;
  const factory MemoOrder.time(OrderType orderType) = MemoOrderByTime;
  const factory MemoOrder.color(OrderType orderType) = MemoOrderByColor;
}
