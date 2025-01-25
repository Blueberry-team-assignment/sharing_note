import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sharing_memo/lib.dart';
import 'package:sharing_memo/src/domain/services/auth/i_auth_service.dart';

class FirebaseService implements IAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Stream<User?> authStateChanges() => _auth.authStateChanges();

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

    return credential.user;
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}
