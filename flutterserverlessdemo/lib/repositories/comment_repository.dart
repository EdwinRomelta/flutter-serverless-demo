import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/mutations/new_comment.ast.g.dart'
    as newComment;
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/comment_response.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/new_comment_response.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/subscriptions/comments_by_post_id.ast.g.dart'
    as commentByPostId;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommentRepository {
  final GraphQLClient _graphQLClient;

  CommentRepository(this._graphQLClient);

  Stream<List<Comment>> getCommentByPostId(String postId) =>
      _graphQLClient
          .subscribe(
          Operation(documentNode: commentByPostId.document, variables: {
            'postId': postId,
          }))
          .map((event) =>
      CommentResponse
          .fromJson(event.data as Map<String, dynamic>)
          .comments);

  createComment(String text, String postId) async {
    final result = await _graphQLClient.mutate(MutationOptions(
      documentNode: newComment.document,
      variables: <String, dynamic>{
        "fk_user": (await FirebaseAuth.instance.currentUser()).uid,
        "text": text,
        "fk_post": postId
      },
    ));
    final newCommentResponse =
    NewCommentResponse.fromJson(result.data as Map<String, dynamic>);
    return newCommentResponse.insertCommentsOne;
  }
}
