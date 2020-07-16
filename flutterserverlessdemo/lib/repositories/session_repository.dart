import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class SessionRepository {
  Future<FirebaseUser> loggedUser() async {
    final user = await FirebaseAuth.instance.currentUser();
    return user;
  }

  Future<AuthResult> login(String email, String password) async =>
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

  Future<AuthResult> register(String username, String email, String password) async {
    final register = CloudFunctions.instance.getHttpsCallable(
      functionName: 'registerUser',
    );
    await register.call(<String, dynamic>{
      "email": email,
      "password": password,
      "displayName": username
    });
    return await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
