import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/screens/form/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          color: Theme.of(context).primaryColor,
          padding: constraints.maxWidth < 500
              ? EdgeInsets.zero
              : EdgeInsets.all(30.0),
          child: LoginForm(),
        );
      }),
    );
  }
}
