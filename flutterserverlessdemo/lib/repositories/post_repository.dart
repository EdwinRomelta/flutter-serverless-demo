import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/mutations/new_post.ast.g.dart'
    as newPost;
import 'package:flutterserverlessdemo/repositories/graph_q_l/queries/post_all.ast.g.dart'
    as postAll;
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/new_post_response.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/response/post_response.dart';
import 'package:flutterserverlessdemo/repositories/services/firebase_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@singleton
class PostRepository {
  final FirebaseService _firebaseService;
  final GraphQLClient _graphQLClient;

  PostRepository(this._firebaseService, this._graphQLClient);

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
    final response = await _firebaseService.upload(pickedFile);
    final result = await _graphQLClient.mutate(MutationOptions(
      documentNode: newPost.document,
      variables: <String, dynamic>{
        "fk_user": (await FirebaseAuth.instance.currentUser()).uid,
        "description": description,
        "image_url": response.body.data[0].url
      },
    ));
    final newPostResponse =
        NewPostResponse.fromJson(result.data as Map<String, dynamic>);
    return newPostResponse.insertPostsOne;
  }
}
