import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';
import 'package:meta/meta.dart';

part 'session_event.dart';

part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final SessionRepository _sessionRepository;

  SessionBloc(this._sessionRepository);

  @override
  SessionState get initialState => InitialSessionState();

  @override
  Stream<SessionState> mapEventToState(SessionEvent event) async* {
    if (event is SessionCheck) {
      yield* _mapSessionCheckToState(event);
    }
  }

  Stream<SessionState> _mapSessionCheckToState(SessionCheck event) async* {
    try {
      yield SessionInProgress();
      final user = await _sessionRepository.checkUser();
      if (user != null) {
        yield SessionSuccess();
      } else {
        yield SessionFailure();
      }
    } catch (e) {
      yield SessionFailure();
    }
  }
}
