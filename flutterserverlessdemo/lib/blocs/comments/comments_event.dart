part of 'comments_bloc.dart';

@immutable
abstract class CommentsEvent {}

class CommentInitialized extends CommentsEvent {
  final Post post;

  CommentInitialized(this.post);
}

class CommentFetched extends CommentsEvent {
  final List<Comment> comments;

  CommentFetched(this.comments);
}
