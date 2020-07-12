// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    id: json['id'] as String,
    text: json['text'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
