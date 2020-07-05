// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$FirebaseService extends FirebaseService {
  _$FirebaseService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FirebaseService;

  @override
  Future<Response<UploadResponse>> _upload(MultipartFile image) {
    final $url = 'upload';
    final $parts = <PartValue>[PartValueFile<MultipartFile>('file', image)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<UploadResponse, UploadResponse>($request);
  }
}
