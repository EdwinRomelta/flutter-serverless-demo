// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentResponse _$_$_CommentResponseFromJson(Map<String, dynamic> json) {
  return _$_CommentResponse(
    comments: (json['comments'] as List)
        ?.map((e) =>
            e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CommentResponseToJson(_$_CommentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'comments', instance.comments?.map((e) => e?.toJson())?.toList());
  return val;
}
