import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:flutterserverlessdemo/repositories/comment_repository.dart';
import 'package:meta/meta.dart';

part 'create_comment_event.dart';
part 'create_comment_state.dart';

class CreateCommentBloc extends Bloc<CreateCommentEvent, CreateCommentState> {
  final CommentRepository _commentRepository;

  CreateCommentBloc(this._commentRepository);

  @override
  CreateCommentState get initialState => CreateCommentInitial();

  @override
  Stream<CreateCommentState> mapEventToState(CreateCommentEvent event) async* {
    if (event is CreateCommentSubmitted) {
      yield* _mapCreateCommentSubmittedToState(event);
    }
  }

  Stream<CreateCommentState> _mapCreateCommentSubmittedToState(
      CreateCommentSubmitted event) async* {
    try {
      yield CreateCommentInProgress();
      final comment = await _commentRepository.createComment(
        event.text,
        event.postId,
      );
      if (comment != null) {
        yield CreateCommentSuccess(comment);
      } else {
        yield CreateCommentFailure();
      }
    } catch (e) {
      yield CreateCommentFailure();
    }
  }
}
