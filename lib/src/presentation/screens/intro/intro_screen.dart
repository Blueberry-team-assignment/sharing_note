import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/externals/storage/storage_provider.dart';
import 'package:sharing_memo/lib.dart';
import 'package:sharing_memo/src/domain/providers/auth/auth_provider.dart';
import 'package:sharing_memo/src/presentation/screens/log-in/login_screen.dart';
import 'package:sharing_memo/src/presentation/screens/memo/memo_home_screen.dart';

class IntroScreen extends ConsumerWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final storageService = ref.read(storageProvider);
    final isUser = storageService.get(key: isUserKey) ?? 0;
    // return authState.when(
    //   data: (User? user) {
    //     // 로그인 여부 확인 후 화면 이동
    //     if (user == null) {
    //       return LoginScreen();
    //     } else {
    //       return MemoHomeScreen();
    //     }
    //   },
    //   error: (err, _) => Scaffold(
    //     body: Center(
    //       child: Text("Error: $err"),
    //     ),
    //   ),
    //   loading: () => const Scaffold(
    //     body: Center(
    //       child: const CircularProgressIndicator(),
    //     ),
    //   ),
    // );
    if (isUser == 1) {
      return MemoHomeScreen();
    } else {
      return authState.when(
        data: (user) => user == null ? LoginScreen() : MemoHomeScreen(),
        loading: () => Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (err, stack) => Scaffold(
          body: Center(
            child: Text("Error: $err"),
          ),
        ),
      );
    }
  }
}
