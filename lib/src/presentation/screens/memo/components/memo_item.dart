import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sharing_memo/src/domain/models/memo/memo.dart';

class MemoItem extends StatelessWidget {
  final Memo memo;
  final VoidCallback? onDeleteTap;
  final SlidableActionCallback? onDeletePressed;
  final SlidableActionCallback? onRestroePressed;
  const MemoItem({
    super.key,
    required this.memo,
    this.onDeleteTap,
    this.onDeletePressed,
    this.onRestroePressed,
  });

  @override
  Widget build(BuildContext context) {
    return sliderAction(
      onDeletePressed: onDeletePressed,
      onRestroePressed: onRestroePressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(memo.color),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  memo.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                memo.createdAt.toString(),
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Slidable sliderAction({
    required Widget child,
    required SlidableActionCallback? onDeletePressed,
    required SlidableActionCallback? onRestroePressed,
  }) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            flex: 1,
            padding: const EdgeInsets.all(8),
            borderRadius: BorderRadius.circular(8),
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            onPressed: onDeletePressed ?? onRestroePressed,
            icon: Icons.delete,
            label: 'Delete',
          )
        ],
      ),
      child: child,
    );
  }
}
