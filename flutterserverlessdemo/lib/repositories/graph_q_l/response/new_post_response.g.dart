// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewPostResponse _$_$_NewPostResponseFromJson(Map<String, dynamic> json) {
  return _$_NewPostResponse(
    insertPostsOne: json['insert_posts_one'] == null
        ? null
        : Post.fromJson(json['insert_posts_one'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewPostResponseToJson(_$_NewPostResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('insert_posts_one', instance.insertPostsOne?.toJson());
  return val;
}
