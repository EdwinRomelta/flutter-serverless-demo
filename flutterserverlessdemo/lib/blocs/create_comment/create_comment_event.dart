part of 'create_comment_bloc.dart';

@immutable
abstract class CreateCommentEvent {}

class CreateCommentSubmitted extends CreateCommentEvent {
  final Post post;
  final String text;

  CreateCommentSubmitted(this.post, this.text);

  @override
  String toString() => 'CreateCommentSubmitted{post: $post, text: $text}';
}
