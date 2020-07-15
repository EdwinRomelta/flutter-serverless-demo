part of 'create_comment_bloc.dart';

@immutable
abstract class CreateCommentEvent {}

class CreateCommentSubmitted extends CreateCommentEvent {
  final String postId;
  final String text;

  CreateCommentSubmitted(this.postId, this.text);

  @override
  String toString() => 'CreateCommentSubmitted{postId: $postId, text: $text}';
}
