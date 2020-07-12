import 'dart:async';

import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/comment_response.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/subscriptions/comments_by_post_id.ast.g.dart'
    as commentByPostId;
import 'package:graphql_flutter/graphql_flutter.dart';

class CommentRepository {
  final GraphQLClient _graphQLClient;

  CommentRepository(this._graphQLClient);

  Stream<List<Comment>> getCommentByPostId(String postId) => _graphQLClient
      .subscribe(Operation(documentNode: commentByPostId.document, variables: {
        'postId': postId,
      }))
      .map((event) =>
          CommentResponse.fromJson(event.data as Map<String, dynamic>)
              .comments);
}
