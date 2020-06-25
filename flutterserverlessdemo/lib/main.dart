import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/firebase_config.dart';
import 'package:flutterserverlessdemo/screens/login_page.dart';

void main() {
  initialize();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Serverless Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
