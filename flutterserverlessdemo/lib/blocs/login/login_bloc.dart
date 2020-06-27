import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SessionRepository _sessionRepository;

  LoginBloc(this._sessionRepository);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event);
    }
  }

  Stream<LoginState> _mapLoginSubmittedToState(LoginSubmitted event) async* {
    try {
      yield LoginInProgress();
      final auth = await _sessionRepository.login(event.email, event.password);
      if (auth != null) {
        yield LoginSuccess();
      } else {
        yield LoginFailure();
      }
    } catch (e) {
      yield LoginFailure();
    }
  }
}
