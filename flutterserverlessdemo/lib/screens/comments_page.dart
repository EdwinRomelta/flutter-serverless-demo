import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/screens/contents/comment_content.dart';

class CommentsPage extends StatelessWidget {
  final Post post;

  static Route<void> route({Post post}) =>
      MaterialPageRoute(builder: (context) => CommentsPage._(post));

  CommentsPage._(this.post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment'),
      ),
      body: CommentContent(
        post: post,
      ),
    );
  }
}
