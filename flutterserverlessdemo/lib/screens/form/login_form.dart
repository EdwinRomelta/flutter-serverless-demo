import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/login/login_bloc.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginBloc = LoginBloc(SessionRepository());
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<LoginBloc, LoginState>(
        bloc: _loginBloc,
        listener: (context, state) {},
        builder: (context, state) => Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
            constraints: BoxConstraints(
              maxWidth: 500,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Welcome to the app, please log in"),
              SizedBox(
                height: 64,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "username"),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "password"),
              ),
              SizedBox(
                height: 32,
              ),
              RaisedButton(
                  color: Colors.blue,
                  child: Text("Log in", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _loginBloc.add(
                      LoginSubmitted(
                        email: _emailController.text,
                        password: _passwordController.text,
                      ),
                    );
                  })
            ]),
          ),
        ),
      );

  @override
  void dispose() {
    _loginBloc.close();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
