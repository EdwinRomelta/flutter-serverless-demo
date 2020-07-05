import 'package:flutter/foundation.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_post_response.freezed.dart';

part 'new_post_response.g.dart';

@freezed
abstract class NewPostResponse with _$NewPostResponse {
  const factory NewPostResponse({
    @required Post insertPostsOne,
  }) = _NewPostResponse;

  factory NewPostResponse.fromJson(Map<String, dynamic> json) =>
      _$NewPostResponseFromJson(json);
}
