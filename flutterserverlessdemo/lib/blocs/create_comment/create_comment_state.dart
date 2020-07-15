part of 'create_comment_bloc.dart';

@immutable
abstract class CreateCommentState {}

class CreateCommentInitial extends CreateCommentState {}

class CreateCommentInProgress extends CreateCommentState {}

class CreateCommentSuccess extends CreateCommentState {
  final Comment comment;

  CreateCommentSuccess(this.comment);
}

class CreateCommentFailure extends CreateCommentState {}
