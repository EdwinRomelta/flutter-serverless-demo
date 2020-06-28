import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/main.dart';
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
        onPressed: () => Navigator.of(context).pushNamed(POST_CREATE),
        child: Icon(Icons.add),
      ),
    );
  }
}
