import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/data/repositories/memo/memo_repository_impl.dart';
import 'package:sharing_memo/src/domain/usecases/add_memo.dart';
import 'package:sharing_memo/src/domain/usecases/delete_memo.dart';
import 'package:sharing_memo/src/domain/usecases/get_memo_by_id.dart';
import 'package:sharing_memo/src/domain/usecases/get_memos.dart';
import 'package:sharing_memo/src/domain/usecases/update_memo.dart';

// final usecaseProvider = Provider<UseCases>((_) => UseCases(addMemo: addMemo, updateMemo: updateMemo, deleteMemo: deleteMemo, getMemoById: getMemoById, getMemos: getMemos));

final addMemoProvider =
    Provider((ref) => AddMemo(ref.watch(memoRepositoryProvider)));
final updateMemoProvider =
    Provider((ref) => UpdateMemo(ref.watch(memoRepositoryProvider)));
final deleteMemoProvider =
    Provider((ref) => DeleteMemo(ref.watch(memoRepositoryProvider)));
final getMemoByIdProvider =
    Provider((ref) => GetMemoById(ref.watch(memoRepositoryProvider)));
final getMemosProvider =
    Provider((ref) => GetMemos(ref.watch(memoRepositoryProvider)));

final usecasesProvider = Provider<UseCases>((ref) {
  return UseCases(
    addMemo: ref.watch(addMemoProvider),
    updateMemo: ref.watch(updateMemoProvider),
    deleteMemo: ref.watch(deleteMemoProvider),
    getMemoById: ref.watch(getMemoByIdProvider),
    getMemos: ref.watch(getMemosProvider),
  );
});

class UseCases {
  final AddMemo addMemo;
  final UpdateMemo updateMemo;
  final DeleteMemo deleteMemo;
  final GetMemoById getMemoById;
  final GetMemos getMemos;

  UseCases({
    required this.addMemo,
    required this.updateMemo,
    required this.deleteMemo,
    required this.getMemoById,
    required this.getMemos,
  });
}
