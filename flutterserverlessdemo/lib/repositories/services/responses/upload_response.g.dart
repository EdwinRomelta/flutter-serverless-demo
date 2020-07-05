// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadResponse _$_$_UploadResponseFromJson(Map<String, dynamic> json) {
  return _$_UploadResponse(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : UploadData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UploadResponseToJson(_$_UploadResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_UploadData _$_$_UploadDataFromJson(Map<String, dynamic> json) {
  return _$_UploadData(
    path: json['path'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_UploadDataToJson(_$_UploadData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('url', instance.url);
  return val;
}
