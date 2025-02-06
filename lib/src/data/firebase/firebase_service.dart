import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/src/data/storage/storage_service.dart';
import 'package:sharing_memo/src/domain/repositories/auth/i_auth_service.dart';

class FirebaseService implements IAuthService {
  final StorageService _storageService;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FirebaseService(this._storageService);
  @override
  Stream<User?> authStateChanges() => _auth.authStateChanges();

  @override
  User? getCurrentUser() => _auth.currentUser;

  @override
  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? account = await _googleSignIn.signIn();

    if (account == null) return null;

    final GoogleSignInAuthentication authentication =
        await account.authentication;

    final OAuthCredential googleCredential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    UserCredential credential =
        await _auth.signInWithCredential(googleCredential);

    if (credential.user == null) return null;

    // return credential.user;
    final user = credential.user;
    if (user != null) {
      await _storageService.set(key: isUserKey, data: 1);
    }
    return user;
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    await _storageService.set(key: isUserKey, data: 0);
  }

  /// Firestore에 사용자 정보 저장
  Future<void> authToFirestore(User user) async {
    final userRef = _firestore.collection('users').doc(user.uid);
    final doc = await userRef.get();

    if (!doc.exists) {
      await userRef.set({
        'uid': user.uid,
        'email': user.email,
        'displayName': user.displayName,
        'photoURL': user.photoURL,
        'createdAt': FieldValue.serverTimestamp(),
      });
    }
  }

  @override
  FirebaseFirestore getFirestore() {
    return _firestore;
  }
}
