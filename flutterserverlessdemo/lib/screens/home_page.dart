import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/screens/contents/all_posts_content.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: AllPostsContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            ExtendedNavigator.of(context).pushNamed(Routes.postCreatePage),
        child: Icon(Icons.add),
      ),
    );
  }
}
