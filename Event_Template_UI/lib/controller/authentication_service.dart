import 'package:event_template_app/controller/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  UserId _userFormFirebaseUser(User user) {
    return user != null ? UserId(uid: user.uid) : null;
  }

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFormFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // Future<String> signUp({String email, String password}) async {
  //   try {
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //         email: email, password: password);

  //     return "Registered";
  //   } on FirebaseAuthException catch (e) {
  //     return e.message;
  //   }
  // }
}
