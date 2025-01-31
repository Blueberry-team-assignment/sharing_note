import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/externals/firebase/firebase_service.dart';
import 'package:sharing_memo/externals/storage/storage_provider.dart';
import 'package:sharing_memo/src/domain/providers/auth/%08auth_state_notifier.dart';
import 'package:sharing_memo/src/domain/services/auth/i_auth_service.dart';

// 📌 인증 서비스 Provider (FirebaseService 사용)
final authServiceProvider = Provider<IAuthService>((ref) {
  final storageService = ref.read(storageProvider);
  return FirebaseService(storageService);
});

// 📌 Auth 현재 로그인 상태 확인
final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  final storageService = ref.read(storageProvider);
  return AuthStateNotifier(authService, storageService);
});

// 📌 구글 로그인
// final loginProvider = Provider<User?>((ref) {
//   final authService = ref.watch(authServiceProvider);
//   return authService.signInWithGoogle();
// });

final loginProvider = StateProvider<User?>((ref) => null);

// 📌 현재 로그인한 사용자 상태 체크
final authStateProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges();
});

// 📌 로그아웃
final logoutProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges();
});
