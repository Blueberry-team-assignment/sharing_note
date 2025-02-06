import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/domain/models/memo/memo_order.dart';

class OrderSection extends ConsumerWidget {
  final Function(MemoOrder memoOrder) onOrderChanged;
  final MemoOrder memoOrder;
  const OrderSection({
    super.key,
    required this.onOrderChanged,
    required this.memoOrder,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final memoNotifier = ref.watch();
    return Container();
  }
}
