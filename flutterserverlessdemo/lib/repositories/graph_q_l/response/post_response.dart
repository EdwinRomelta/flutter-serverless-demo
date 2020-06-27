import 'package:flutter/foundation.dart';
import 'package:flutterserverlessdemo/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_response.freezed.dart';

part 'post_response.g.dart';

@freezed
abstract class PostResponse with _$PostResponse {
  const factory PostResponse({
    @required List<Post> posts,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
