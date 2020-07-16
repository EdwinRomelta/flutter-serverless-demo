import 'package:chopper/chopper.dart';
import 'package:flutterserverlessdemo/repositories/services/firebase_service.dart';
import 'package:flutterserverlessdemo/repositories/services/json_serializable_converter.dart';
import 'package:flutterserverlessdemo/repositories/services/responses/upload_response.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  JsonSerializableConverter provideConverter() => JsonSerializableConverter({
        UploadResponse: UploadResponse.fromJsonFactory,
      });

  FirebaseService provideFirebaseService() => FirebaseService.create();

  ChopperClient provideServices(
          JsonSerializableConverter converter, FirebaseService service) =>
      ChopperClient(
        converter: converter,
        errorConverter: converter,
        baseUrl:
            'https://us-central1-flutter-serverless-demo.cloudfunctions.net/',
        services: [service],
      ).getService();
}
