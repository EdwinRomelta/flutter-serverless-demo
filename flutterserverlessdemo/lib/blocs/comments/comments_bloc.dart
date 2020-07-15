import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:flutterserverlessdemo/repositories/comment_repository.dart';
import 'package:meta/meta.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository _commentRepository;
  StreamSubscription commentsSubscription;

  CommentsBloc(this._commentRepository);

  @override
  CommentsState get initialState => CommentsInitial();

  @override
  Stream<CommentsState> mapEventToState(CommentsEvent event) async* {
    if (event is CommentInitialized) {
      yield* _mapCommentInitializedToState(event);
    }
    if (event is CommentFetched) {
      yield* _mapCommentFetchedToState(event);
    }
  }

  Stream<CommentsState> _mapCommentInitializedToState(
      CommentInitialized event) async* {
    try {
      yield CommentsInProgress();
      commentsSubscription = _commentRepository
          .getCommentByPostId(event.postId)
          .listen((event) => add(CommentFetched(event)));
    } catch (e) {
      yield CommentsFailure();
    }
  }

  Stream<CommentsState> _mapCommentFetchedToState(CommentFetched event) async* {
    try {
      yield CommentsSuccess(event.comments);
    } catch (e) {
      yield CommentsFailure();
    }
  }

  @override
  Future<void> close() {
    commentsSubscription?.cancel();
    return super.close();
  }
}
