import 'package:firebase_auth/firebase_auth.dart';

class SessionRepository {
  Future<FirebaseUser> checkUser() async =>
      await FirebaseAuth.instance.currentUser();

  Future<AuthResult> login(String email, String password) async =>
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
}
