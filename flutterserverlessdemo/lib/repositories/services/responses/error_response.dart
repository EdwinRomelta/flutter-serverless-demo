import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response.freezed.dart';

part 'error_response.g.dart';

@freezed
abstract class ErrorResponse with _$ErrorResponse {
  static const fromJsonFactory = _$ErrorResponseFromJson;

  const factory ErrorResponse({
    @required bool error,
    @required String message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
