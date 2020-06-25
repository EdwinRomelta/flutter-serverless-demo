import 'package:firebase_auth/firebase_auth.dart';

class SessionRepository {
  Future<AuthResult> login(String email, String password) async =>
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
}
