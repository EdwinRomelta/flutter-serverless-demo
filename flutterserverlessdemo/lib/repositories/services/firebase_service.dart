import 'package:chopper/chopper.dart';
import 'package:flutterserverlessdemo/repositories/services/responses/upload_response.dart';
import 'package:http/http.dart' hide Response, Request;
import 'package:image_picker/image_picker.dart';

import 'json_serializable_converter.dart';

part 'firebase_service.chopper.dart';

final converter = JsonSerializableConverter({
  UploadResponse: UploadResponse.fromJsonFactory,
});
FirebaseService _instance;

@ChopperApi()
abstract class FirebaseService extends ChopperService {
  static FirebaseService create([ChopperClient client]) =>
      _$FirebaseService(client);

  static FirebaseService get instance => _instance ??= ChopperClient(
        converter: converter,
        errorConverter: converter,
        baseUrl:
            'https://us-central1-flutter-serverless-demo.cloudfunctions.net/',
        services: [FirebaseService.create()],
      ).getService();

  Future<Response<UploadResponse>> upload(PickedFile pickedFile) async {
    final multiPart =
        MultipartFile.fromBytes('file', await pickedFile.readAsBytes());
    return await _upload(multiPart);
  }

  @multipart
  @Post(path: 'upload')
  Future<Response<UploadResponse>> _upload(
    @PartFile('file') MultipartFile image,
  );
}
