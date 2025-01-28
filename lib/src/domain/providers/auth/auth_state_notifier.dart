import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/externals/storage/storage_service.dart';
import 'package:sharing_memo/src/domain/services/auth/i_auth_service.dart';

class AuthStateNotifier extends StateNotifier<User?> {
  final IAuthService _authService;
  final StorageService _storage;
  AuthStateNotifier(this._authService, this._storage) : super(null) {
    _loadLoginStateFromStorage();
    _authService.authStateChanges().listen((User? user) {
      state = user;
      _saveLoginStateToStorage(user);
    });
  }

  Future<void> _loadLoginStateFromStorage() async {
    final isUser = await _storage.get(key: isUserKey) ?? 0;
    if (isUserKey == 1) {
      state = _authService.getCurrentUser();
    }
  }

  Future<void> _saveLoginStateToStorage(User? user) async {
    await _storage.set(key: isUserKey, data: user != null ? 1 : 0);
  }

  Future<void> signInWithGoogle() async {
    final user = await _authService.signInWithGoogle();
    if (user != null) {
      state = user;
      await _saveLoginStateToStorage(user);
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
    state = null;
    await _saveLoginStateToStorage(null);
  }
}
