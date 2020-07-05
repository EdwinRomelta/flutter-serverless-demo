import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_response.freezed.dart';

part 'upload_response.g.dart';

@freezed
abstract class UploadResponse with _$UploadResponse {
  static const fromJsonFactory = _$UploadResponseFromJson;

  const factory UploadResponse({
    @required List<UploadData> data,
  }) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}

@freezed
abstract class UploadData with _$UploadData {
  const factory UploadData({
    @required String path,
    @required String url,
  }) = _UploadData;

  factory UploadData.fromJson(Map<String, dynamic> json) =>
      _$UploadDataFromJson(json);
}
