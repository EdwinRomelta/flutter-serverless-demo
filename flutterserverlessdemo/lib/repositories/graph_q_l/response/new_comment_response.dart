import 'package:flutter/foundation.dart';
import 'package:flutterserverlessdemo/models/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_comment_response.freezed.dart';

part 'new_comment_response.g.dart';

@freezed
abstract class NewCommentResponse with _$NewCommentResponse {
  const factory NewCommentResponse({
    @required Comment insertCommentsOne,
  }) = _NewCommentResponse;

  factory NewCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$NewCommentResponseFromJson(json);
}
