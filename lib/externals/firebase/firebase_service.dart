import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sharing_memo/core/configs/const.dart';
import 'package:sharing_memo/externals/storage/storage_service.dart';
import 'package:sharing_memo/src/domain/services/auth/i_auth_service.dart';

class FirebaseService implements IAuthService {
  final StorageService _storageService;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

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
}
