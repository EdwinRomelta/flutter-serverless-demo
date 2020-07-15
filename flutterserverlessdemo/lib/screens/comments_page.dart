import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/screens/contents/comment_content.dart';

class CommentsPage extends StatelessWidget {
  final String postId;

  CommentsPage(@PathParam() this.postId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment'),
      ),
      body: CommentContent(
        postId: postId,
      ),
    );
  }
}
