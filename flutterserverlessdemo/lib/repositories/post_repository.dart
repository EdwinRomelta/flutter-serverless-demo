import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/mutations/new_post.ast.g.dart'
    as newPost;
import 'package:flutterserverlessdemo/repositories/graph_q_l/queries/post_all.ast.g.dart'
    as postAll;
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/post_response.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';

class PostRepository {
  final GraphQLClient _graphQLClient;

  PostRepository(this._graphQLClient);

  Future<List<Post>> getAllPost() async {
    final result = await _graphQLClient.query(WatchQueryOptions(
        documentNode: postAll.document,
        eagerlyFetchResults: false,
        fetchPolicy: FetchPolicy.networkOnly));

    final postResponse =
        PostResponse.fromJson(result.data as Map<String, dynamic>);
    return postResponse.posts;
  }

  Future<Post> createPost(PickedFile pickedFile, String description) async {
    final result = await _graphQLClient.mutate(MutationOptions(
      documentNode: newPost.document,
      variables: <String, dynamic>{
        "fk_user": (await FirebaseAuth.instance.currentUser()).uid,
        "description": description
      },
    ));
    final postResponse =
        PostResponse.fromJson(result.data as Map<String, dynamic>);
    return postResponse.posts[0];
  }
}
