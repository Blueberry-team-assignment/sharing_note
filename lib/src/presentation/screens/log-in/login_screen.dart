import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/domain/providers/auth/auth_provider.dart';
import 'package:sharing_memo/src/presentation/screens/memo/memo_home_screen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final authService = ref.read(authServiceProvider);
                final newUser = await authService.signInWithGoogle();

                if (newUser != null) {
                  ref.read(loginProvider.notifier).state = newUser;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MemoHomeScreen(),
                  ));
                }
              },
              child: Text("로그인"),
            ),
          ),
        ],
      ),
    );
  }
}
