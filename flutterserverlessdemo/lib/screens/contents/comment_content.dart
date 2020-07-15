import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/comments/comments_bloc.dart';
import 'package:flutterserverlessdemo/blocs/create_comment/create_comment_bloc.dart';
import 'package:flutterserverlessdemo/repositories/comment_repository.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/graph_q_l_client.dart';

class CommentContent extends StatefulWidget {
  final String postId;

  CommentContent({@required this.postId});

  @override
  _CommentContentState createState() => _CommentContentState();
}

class _CommentContentState extends State<CommentContent> {
  final _commentController = TextEditingController();
  final _commentBloc = CommentsBloc(CommentRepository(graphQLClient));
  final _newCommentBloc = CreateCommentBloc(CommentRepository(graphQLClient));

  @override
  void initState() {
    super.initState();
    _commentBloc..add(CommentInitialized(widget.postId));
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<CommentsBloc, CommentsState>(
        bloc: _commentBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is CommentsSuccess) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    child: ListView.builder(
                        itemCount: state.comments.length,
                        itemBuilder: (context, index) {
                          final comment = state.comments[index];
                          return ListTile(
                            title: Text(comment.text),
                          );
                        }),
                  ),
                ),
                BlocListener<CreateCommentBloc, CreateCommentState>(
                  bloc: _newCommentBloc,
                  listener: (context, state) {
                    if (state is CreateCommentInProgress) {
                      _commentController.clear();
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _commentController,
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: (state is CreateCommentInProgress)
                                ? null
                                : () {
                              _newCommentBloc.add(CreateCommentSubmitted(
                                        widget.postId,
                                        _commentController.text));
                                  },
                            child: Icon(Icons.send)),
                      ],
                    ),
                  ),
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );

  @override
  void dispose() {
    _commentController.dispose();
    _commentBloc.close();
    _newCommentBloc.close();
    super.dispose();
  }
}
