import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/create_post/create_post_bloc.dart';
import 'package:flutterserverlessdemo/main.dart';
import 'package:flutterserverlessdemo/widgets/aspect_ratio_video.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class PostSubmitPage extends StatefulWidget {
  final PickedFile imageFile;
  final PickedFile videoFile;

  PostSubmitPage({this.imageFile, this.videoFile});

  @override
  _PostSubmitPageState createState() => _PostSubmitPageState();
}

class _PostSubmitPageState extends State<PostSubmitPage> {
  final _createPostBloc = CreatePostBloc(injector.get());
  final _descriptionController = TextEditingController();
  VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        actions: [
          FlatButton(
            onPressed: () {
              _createPostBloc
                ..add(CreatePostSubmitted(widget.imageFile ?? widget.videoFile,
                    _descriptionController.text));
            },
            child: Text('Submit'),
          )
        ],
      ),
      body: BlocListener<CreatePostBloc, CreatePostState>(
        bloc: _createPostBloc,
        listener: (context, state) {
          if (state is CreatePostSuccess) {
            Navigator.of(context).pop(state.post);
          }
        },
        child: Column(
          children: [
            Center(
                child: widget.imageFile != null
                    ? _previewImage(widget.imageFile)
                    : _previewVideo()),
            TextFormField(
              decoration: InputDecoration(hintText: "Write a caption"),
              controller: _descriptionController,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _disposeVideoController();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _disposeVideoController() async {
    if (_controller != null) {
      await _controller.dispose();
      _controller = null;
    }
  }

  Widget _previewVideo() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AspectRatioVideo(_controller),
    );
  }

  Future<void> _playVideo(PickedFile file) async {
    if (file != null && mounted) {
      await _disposeVideoController();
      if (kIsWeb) {
        _controller = VideoPlayerController.network(file.path);
      } else {
        _controller = VideoPlayerController.file(File(file.path));
      }
      await _controller.setVolume(1.0);
      await _controller.initialize();
      await _controller.setLooping(true);
      await _controller.play();
    }
  }

  Widget _previewImage(PickedFile pickedFile) {
    if (kIsWeb) {
      return Image.network(pickedFile.path);
    } else {
      return Image.file(File(pickedFile.path));
    }
  }
}
