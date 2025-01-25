import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/firebase_options.dart';
import 'package:sharing_memo/src/domain/providers/auth/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authState.when(
                data: (user) => "${user?.displayName} \n ${user?.email}",
                error: (err, stack) => "에러...",
                loading: () => "로딩중...",
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final authService = ref.read(authServiceProvider);
                  final newUser = await authService.signInWithGoogle();

                  if (newUser != null) {
                    ref.read(loginProvider.notifier).state = newUser;
                  }
                },
                child: Text("버튼"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final authService = ref.read(authServiceProvider);
                  await authService.signOut();
                },
                child: Text("로그아웃"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
