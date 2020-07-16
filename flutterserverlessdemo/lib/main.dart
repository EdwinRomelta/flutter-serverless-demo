import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/firebase_config.dart';
import 'package:flutterserverlessdemo/main.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final injector = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(injector);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
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
