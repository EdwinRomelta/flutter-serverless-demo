// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewCommentResponse _$_$_NewCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _$_NewCommentResponse(
    insertCommentsOne: json['insert_comments_one'] == null
        ? null
        : Comment.fromJson(json['insert_comments_one'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewCommentResponseToJson(
    _$_NewCommentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('insert_comments_one', instance.insertCommentsOne?.toJson());
  return val;
}
