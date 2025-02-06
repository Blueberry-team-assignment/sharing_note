import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/src/data/storage/storage_provider.dart';
import 'package:sharing_memo/routers/router.dart';
import 'package:sharing_memo/src/presentation/providers/auth/auth_provider.dart';

class IntroScreen extends ConsumerWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final storageService = ref.read(storageProvider);
    final isUser = storageService.get(key: isUserKey) ?? 0;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final router = GoRouter.of(context);

      if (isUser == 1) {
        router.go(AppRoute.memoHome); // 바로 메모 홈으로 이동
      } else {
        authState.when(
          data: (user) {
            if (user == null) {
              router.go(AppRoute.login);
            } else {
              router.go(AppRoute.memoHome);
            }
          },
          loading: () {}, // 로딩 중에는 아무 동작 안 함
          error: (err, stack) {
            // router.go(AppRoute.err, extra: err.toString()); // 에러 페이지로 이동
          },
        );
      }
    });

    // 빈 위젯 반환 (UI는 필요 없음, 라우팅만 수행)
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()), // 라우팅이 실행되기까지 잠시 표시
    );
  }
}
