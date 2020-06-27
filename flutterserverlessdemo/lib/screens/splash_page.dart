import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/session/session_bloc.dart';
import 'package:flutterserverlessdemo/main.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _sessionBloc = SessionBloc(SessionRepository());

  @override
  void initState() {
    super.initState();
    _sessionBloc.add(SessionCheck());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SessionBloc, SessionState>(
        bloc: _sessionBloc,
        listener: (context, state) {
          if (state is SessionSuccess) {
            Navigator.of(context).pushReplacementNamed(HOME);
          }
          if (state is SessionFailure) {
            Navigator.of(context).pushReplacementNamed(LOGIN);
          }
        },
        child: Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sessionBloc.close();
    super.dispose();
  }
}
