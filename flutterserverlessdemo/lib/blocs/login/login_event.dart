part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;

  LoginSubmitted({
    this.email,
    this.password,
  });

  @override
  String toString() => 'LoginSubmitted{email: $email, password: $password}';
}
