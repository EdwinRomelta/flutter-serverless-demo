import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:flutterserverlessdemo/repositories/post_repository.dart';
import 'package:meta/meta.dart';

part 'my_post_event.dart';

part 'my_post_state.dart';

class MyPostBloc extends Bloc<MyPostEvent, MyPostState> {
  final PostRepository _postRepository;

  MyPostBloc(this._postRepository);

  @override
  MyPostState get initialState => MyPostInitial();

  @override
  Stream<MyPostState> mapEventToState(MyPostEvent event) async* {
    if (event is MyPostRefresh) {
      yield* _mapMyPostRefreshToState(event);
    }
  }

  Stream<MyPostState> _mapMyPostRefreshToState(MyPostRefresh event) async* {
    try {
      yield MyPostInProgress();
      final posts = await _postRepository.getAllPost();
      yield MyPostSuccess(posts);
    } catch (e) {
      yield MyPostFailure();
    }
  }
}
