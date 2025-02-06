import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/presentation/providers/memo/event/memo_event.dart';
import 'package:sharing_memo/src/presentation/providers/memo/memo_notifier.dart';

class MemoHomeScreen extends ConsumerWidget {
  const MemoHomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memoProvider = ref.watch(memoNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        actions: [
          IconButton(
            onPressed: () {
              memoProvider.onEvent(const MemoEvent.toggleOrderSection());
            },
            icon: const Icon(
              Icons.more_horiz_rounded,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
