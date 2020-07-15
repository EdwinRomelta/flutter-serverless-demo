import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/firebase_config.dart';

void main() {
  initialize();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Serverless Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator<Router>(router: Router()),
        onGenerateRoute: Router());
  }
}
