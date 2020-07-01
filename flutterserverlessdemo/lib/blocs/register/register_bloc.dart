import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final SessionRepository _sessionRepository;

  RegisterBloc(this._sessionRepository);

  @override
  RegisterState get initialState => RegisterInitial();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is RegisterSubmitted) {
      yield* _mapRegisterSubmittedToState(event);
    }
  }

  Stream<RegisterState> _mapRegisterSubmittedToState(
      RegisterSubmitted event) async* {
    try {
      yield RegisterInProgress();
      final auth = await _sessionRepository.register(
          event.username, event.email, event.password);
      if (auth != null) {
        yield RegisterSuccess();
      } else {
        yield RegisterFailure();
      }
    } catch (e) {
      yield RegisterFailure();
    }
  }
}
