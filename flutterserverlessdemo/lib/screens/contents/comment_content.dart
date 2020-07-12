import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/comments/comments_bloc.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/repositories/comment_repository.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/graph_q_l_client.dart';

class CommentContent extends StatefulWidget {
  final Post post;

  CommentContent({@required this.post});

  @override
  _CommentContentState createState() => _CommentContentState();
}

class _CommentContentState extends State<CommentContent> {
  final _commentBloc = CommentsBloc(CommentRepository(graphQLClient));

  @override
  void initState() {
    super.initState();
    _commentBloc..add(CommentInitialized(widget.post));
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<CommentsBloc, CommentsState>(
        bloc: _commentBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is CommentsSuccess) {
            return ListView.builder(
                itemCount: state.comments.length,
                itemBuilder: (context, index) {
                  final comment = state.comments[index];
                  return ListTile(
                    title: Text(comment.text),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );

  @override
  void dispose() {
    _commentBloc.close();
    super.dispose();
  }
}
