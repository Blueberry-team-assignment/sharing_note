import 'package:firebase_auth/firebase_auth.dart';

class AuthState {
  final User? user;
  final Map<String, dynamic>? userData;

  AuthState({
    required this.user,
    required this.userData,
  });
}
