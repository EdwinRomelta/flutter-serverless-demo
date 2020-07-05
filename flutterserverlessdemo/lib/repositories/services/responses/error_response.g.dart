// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$_$_ErrorResponseFromJson(Map<String, dynamic> json) {
  return _$_ErrorResponse(
    error: json['error'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorResponseToJson(_$_ErrorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error);
  writeNotNull('message', instance.message);
  return val;
}
