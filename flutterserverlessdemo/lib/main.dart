import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/firebase_config.dart';
import 'package:flutterserverlessdemo/screens/home_page.dart';
import 'package:flutterserverlessdemo/screens/login_page.dart';
import 'package:flutterserverlessdemo/screens/splash_page.dart';

void main() {
  initialize();
  runApp(App());
}

const SPLASH = '/';
const HOME = '/home';
const LOGIN = '/login';

Map<String, WidgetBuilder> _routes = {
  SPLASH: (context) => SplashPage(),
  HOME: (context) => HomePage(),
  LOGIN: (context) => LoginPage(),
};

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
      initialRoute: SPLASH,
      routes: _routes,
    );
  }
}
