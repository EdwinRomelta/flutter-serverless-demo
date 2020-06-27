import 'dart:async';

import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/queries/post_all.ast.g.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/post_response.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostRepository {
  final GraphQLClient _graphQLClient;

  PostRepository(this._graphQLClient);

  Future<List<Post>> getAllPost() async {
    final result = await _graphQLClient.query(WatchQueryOptions(
        documentNode: document,
        eagerlyFetchResults: false,
        fetchPolicy: FetchPolicy.networkOnly));

    final postResponse =
        PostResponse.fromJson(result.data as Map<String, dynamic>);
    return postResponse.posts;
  }
}
