import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/register/register_bloc.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';

class RegisterContent extends StatefulWidget {
  @override
  _RegisterContentState createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  final _registerBloc = RegisterBloc(SessionRepository());
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<RegisterBloc, RegisterState>(
        bloc: _registerBloc,
        listener: (context, state) {
          if (state is RegisterSuccess) {
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.homePage);
          }
        },
        buildWhen: (previous, current) => current is RegisterInitial,
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
              Text("Register to see photos and videos from your friends"),
              SizedBox(
                height: 64,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "email"),
              ),
              TextField(
                controller: _usernameController,
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
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    color: Colors.blue,
                    child:
                    Text("Register", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      _registerBloc.add(
                        RegisterSubmitted(
                          email: _emailController.text,
                          username: _usernameController.text,
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
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => ExtendedNavigator.of(context)
                              .pushReplacementNamed(Routes.loginPage),
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
    _registerBloc.close();
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
