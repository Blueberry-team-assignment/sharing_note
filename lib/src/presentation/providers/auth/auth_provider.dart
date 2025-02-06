import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/src/data/firebase/firebase_service.dart';
import 'package:sharing_memo/src/data/storage/storage_provider.dart';
import 'package:sharing_memo/src/domain/repositories/auth/i_auth_service.dart';

// 📌 인증 서비스 Provider (FirebaseService 사용)
final authServiceProvider = Provider<IAuthService>((ref) {
  final storageService = ref.read(storageProvider);
  return FirebaseService(storageService);
});

// // 📌 Auth 현재 로그인 상태 확인
// final authStateNotifierProvider =
//     StateNotifierProvider<AuthStateNotifier, User?>((ref) {
//   final authService = ref.watch(authServiceProvider);
//   final storageService = ref.read(storageProvider);
//   return AuthStateNotifier(authService, storageService);
// });

// // 📌 구글 로그인
final loginProvider = StateProvider<User?>((ref) => null);

// 📌 현재 로그인한 사용자 상태 체크
final authStateProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges();
});

// // 📌 로그아웃
// final logoutProvider = StreamProvider<User?>((ref) {
//   final authService = ref.watch(authServiceProvider);
//   return authService.authStateChanges();
// });

// 📌 Firestore 에서 사용자 정보 가져오기
final authFromStoreProvider =
    FutureProvider<Map<String, dynamic>?>((ref) async {
  final authService = ref.read(authServiceProvider);
  final user = authService.getCurrentUser();

  if (user == null) return null;
  final doc = await authService
      .getFirestore()
      .collection('users')
      .doc(user.uid)
      .get()
      .then((data) => data);
  return doc.exists ? doc.data() : null;
});
