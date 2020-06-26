part of 'session_bloc.dart';

@immutable
abstract class SessionState {}

class InitialSessionState extends SessionState {}

class SessionInitial extends SessionState {}

class SessionInProgress extends SessionState {}

class SessionSuccess extends SessionState {}

class SessionFailure extends SessionState {}
