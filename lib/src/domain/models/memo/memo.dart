import 'package:freezed_annotation/freezed_annotation.dart';
part 'memo.g.dart';
part 'memo.freezed.dart';

@freezed
class Memo with _$Memo {
  factory Memo({
    int? id,
    required String title,
    required String content,
    required String createdAt,
    required int color,
  }) = _Memo;

  factory Memo.fromJson(Map<String, dynamic> json) => _$MemoFromJson(json);
}
