part of 'comments_bloc.dart';

@immutable
abstract class CommentsState {}

class CommentsInitial extends CommentsState {}

class CommentsInProgress extends CommentsState {}

class CommentsSuccess extends CommentsState {
  final List<Comment> comments;

  CommentsSuccess(this.comments);
}

class CommentsFailure extends CommentsState {}
