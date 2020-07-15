part of 'comments_bloc.dart';

@immutable
abstract class CommentsEvent {}

class CommentInitialized extends CommentsEvent {
  final String postId;

  CommentInitialized(this.postId);
}

class CommentFetched extends CommentsEvent {
  final List<Comment> comments;

  CommentFetched(this.comments);
}
