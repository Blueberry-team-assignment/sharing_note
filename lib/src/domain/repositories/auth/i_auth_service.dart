// 📌 firebase service를 구현할 추상 인터페이스
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthService {
  Future<User?> signInWithGoogle();
  Future<void> signOut();
  Stream<User?> authStateChanges();
  User? getCurrentUser();
  FirebaseFirestore getFirestore();
}
