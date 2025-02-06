import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/src/data/storage/storage_provider.dart';
import 'package:sharing_memo/src/data/storage/storage_service.dart';
import 'package:sharing_memo/src/domain/repositories/auth/i_auth_service.dart';
import 'package:sharing_memo/src/presentation/providers/auth/auth_provider.dart';
import 'package:sharing_memo/src/presentation/providers/auth/state/auth_state.dart';

// 📌 Auth 현재 로그인 상태 확인
final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  final storageService = ref.read(storageProvider);
  return AuthStateNotifier(authService, storageService);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final IAuthService _authService;
  final StorageService _storage;
  // AuthStateNotifier(this._authService, this._storage) : super(null) {
  //   _loadLoginStateFromStorage();
  //   _authService.authStateChanges().listen((User? user) {
  //     state = user;
  //     _saveLoginStateToStorage(user);
  //   });
  // }
  AuthStateNotifier(this._authService, this._storage)
      : super(AuthState(user: null, userData: null)) {
    _initializeAuthState();
  }

  void _initializeAuthState() {
    _loadLoginStateFromStorage();
    _authService.authStateChanges().listen((User? user) async {
      state = AuthState(user: user, userData: null);
      await _saveLoginStateToStorage(user);

      if (user != null) {
        final userData = await _fetchUserData(user.uid);
        state = AuthState(user: user, userData: userData);
      }
    });
  }

  /// 🔹 Firestore에서 사용자 정보 가져오기
  Future<Map<String, dynamic>?> _fetchUserData(String uid) async {
    final doc =
        await _authService.getFirestore().collection('users').doc(uid).get();
    return doc.exists ? doc.data() : null;
  }

  Future<void> _loadLoginStateFromStorage() async {
    final isUser = await _storage.get(key: isUserKey) ?? 0;
    if (isUser == 1) {
      final user = _authService.getCurrentUser();
      if (user != null) {
        final userData = await _fetchUserData(user.uid);
        state = AuthState(user: user, userData: userData);
      }
    }
  }

  Future<void> _saveLoginStateToStorage(User? user) async {
    await _storage.set(key: isUserKey, data: user != null ? 1 : 0);
  }

  Future<void> signInWithGoogle() async {
    final user = await _authService.signInWithGoogle();
    if (user != null) {
      final userData = await _fetchUserData(user.uid);
      state = AuthState(user: user, userData: userData);
      await _saveLoginStateToStorage(user);
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
    state = AuthState(user: null, userData: null);
    await _saveLoginStateToStorage(null);
  }
}
