import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sharing_memo/routers/router.dart';
import 'package:sharing_memo/src/presentation/providers/auth/auth_provider.dart';

class UserInfoScreen extends ConsumerWidget {
  const UserInfoScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              authState.when(
                data: (user) => "${user?.displayName} \n ${user?.email}",
                error: (err, stack) => "에러...",
                loading: () => "로딩중...",
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final authService = ref.read(authServiceProvider);
                await authService.signOut();
                ref.read(loginProvider.notifier).state = null;
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const LoginScreen(),
                // ));
                if (context.mounted) {
                  context.pushReplacementNamed(AppRoute.login);
                }
              },
              child: const Text("로그아웃"),
            ),
          ),
        ],
      ),
    );
  }
}
