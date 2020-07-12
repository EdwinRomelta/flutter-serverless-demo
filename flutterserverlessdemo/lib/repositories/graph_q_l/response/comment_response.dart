import 'package:flutter/foundation.dart';
import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.freezed.dart';

part 'comment_response.g.dart';

@freezed
abstract class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    @required List<Comment> comments,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}
