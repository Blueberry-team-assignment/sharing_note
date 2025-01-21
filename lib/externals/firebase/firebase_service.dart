import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sharing_memo/lib.dart';

class FirebaseService {
  FirebaseService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // 📌 [Getter]
  FirebaseAuth get auth => _auth;
  User? get user => _user;

  void init() {
    _auth.authStateChanges().listen((User? user) {
      _user = user;
      log("---> init user: $user");
    });
  }

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    GoogleSignInAccount? account = await _googleSignIn.signIn();

    /// 로그인 실패 시
    if (account == null) {
      return null;
    }

    final GoogleSignInAuthentication authentication =
        await account.authentication;

    final OAuthCredential googleCredential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    UserCredential credential =
        await _auth.signInWithCredential(googleCredential);

    if (credential.user == null) {
      return null;
    }

    _user = credential.user;

    return account;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}
