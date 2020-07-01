part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterSubmitted extends RegisterEvent {
  final String username;
  final String email;
  final String password;

  RegisterSubmitted({
    this.username,
    this.email,
    this.password,
  });

  @override
  String toString() =>
      'RegisterSubmitted{username: $username, email: $email, password: $password}';
}
