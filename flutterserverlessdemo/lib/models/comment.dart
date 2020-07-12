import 'package:flutter/foundation.dart';
import 'package:flutterserverlessdemo/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

part 'comment.g.dart';

@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    @required String id,
    @required String text,
    @required DateTime createdAt,
    @required User user,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
