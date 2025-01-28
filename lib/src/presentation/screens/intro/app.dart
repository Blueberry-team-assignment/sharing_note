import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/externals/storage/storage_provider.dart';
import 'package:sharing_memo/src/domain/providers/auth/auth_provider.dart';
import 'package:sharing_memo/src/presentation/screens/intro/intro_screen.dart';
import 'package:sharing_memo/src/presentation/screens/log-in/login_screen.dart';

class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: IntroScreen(),
    );
  }
}
