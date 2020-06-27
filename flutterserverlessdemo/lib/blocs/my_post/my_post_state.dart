part of 'my_post_bloc.dart';

@immutable
abstract class MyPostState {}

class MyPostInitial extends MyPostState {}

class MyPostInProgress extends MyPostState {}

class MyPostSuccess extends MyPostState {
  final List<Post> posts;

  MyPostSuccess(this.posts);

  @override
  String toString() => 'MyPostSuccess{posts: $posts}';
}

class MyPostFailure extends MyPostState {}
