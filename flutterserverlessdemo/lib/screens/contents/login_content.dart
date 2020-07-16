import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/login/login_bloc.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/main.dart';

class LoginContent extends StatefulWidget {
  @override
  _LoginContentState createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  final _loginBloc = LoginBloc(injector.get());
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<LoginBloc, LoginState>(
        bloc: _loginBloc,
        listener: (context, state) {
          if (state is LoginSuccess) {
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.homePage);
          }
        },
        buildWhen: (previous, current) => current is LoginInitial,
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
                height: 48,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "email"),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "password"),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    color: Colors.blue,
                    child:
                        Text("Log in", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      _loginBloc.add(
                        LoginSubmitted(
                          email: _emailController.text,
                          password: _passwordController.text,
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: 'Don\'t have an account? '),
                      TextSpan(
                        text: 'Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => ExtendedNavigator.of(context)
                              .pushReplacementNamed(Routes.registerPage),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    )),
              )
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
