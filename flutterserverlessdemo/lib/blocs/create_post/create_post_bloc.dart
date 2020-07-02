import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterserverlessdemo/repositories/post_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'create_post_event.dart';

part 'create_post_state.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final PostRepository _postRepository;

  CreatePostBloc(this._postRepository);

  @override
  CreatePostState get initialState => CreatePostInitial();

  @override
  Stream<CreatePostState> mapEventToState(CreatePostEvent event) async* {
    if (event is CreatePostSubmitted) {
      yield* _mapCreatePostSubmittedToState(event);
    }
  }

  Stream<CreatePostState> _mapCreatePostSubmittedToState(
      CreatePostSubmitted event) async* {
    try {
      yield CreatePostInProgress();
      final auth =
          await _postRepository.createPost(event.pickedFile, event.description);
      if (auth != null) {
        yield CreatePostSuccess();
      } else {
        yield CreatePostFailure();
      }
    } catch (e) {
      yield CreatePostFailure();
    }
  }
}
