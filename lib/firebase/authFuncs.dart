import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth_ui/firebase_auth_ui.dart';
import 'package:firebase_auth_ui/providers.dart';

class AuthFuncs {
  Future<String> signInWithGoogle() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final googleSignIn = GoogleSignIn();
    await Firebase.initializeApp();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential authResult =
        await auth.signInWithCredential(credential);
    final User user = authResult.user;

    if (user != null) {
      print('signInWithGoogle succeeded: $user');

      return '$user';
    }

    return null;
  }

  Future<void> signOutGoogle() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final googleSignIn = GoogleSignIn();
    await auth.signOut();
    await googleSignIn.signOut();
    print('Sign Out Successfull');
  }

  Future<void> signInAnonymously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  void signInWithPhone() {
    FirebaseAuthUi.instance()
        .launchAuth(
          [AuthProvider.phone()],
          tosUrl: "https://my-terms-url", // Optional
          privacyPolicyUrl: "https://my-privacy-policy", // Optional,
        )
        .then((firebaseUser) =>
            print("Logged in user is ${firebaseUser.displayName}"))
        .catchError((error) => print("Error $error"));
  }
}
