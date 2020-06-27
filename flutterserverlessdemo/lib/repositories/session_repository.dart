import 'package:firebase_auth/firebase_auth.dart';

class SessionRepository {
  Future<FirebaseUser> startUser() async {
    final user = await FirebaseAuth.instance.currentUser();
    return user;
  }

  Future<AuthResult> login(String email, String password) async =>
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
}
