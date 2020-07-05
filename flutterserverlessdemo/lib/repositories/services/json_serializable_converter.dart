import 'package:chopper/chopper.dart';
import 'package:flutterserverlessdemo/repositories/services/network_error.dart';
import 'package:flutterserverlessdemo/repositories/services/responses/error_response.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  final Map<Type, JsonFactory> factories;

  JsonSerializableConverter(this.factories);

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return null;
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(List values) =>
      values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  dynamic _decode<T>(entity) {
    if (entity is Map) {
      return _decodeMap<T>(entity);
    }
    if (entity is Iterable) return _decodeList<T>(entity);
    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonRes = super.convertResponse(response);

    return jsonRes.replace<ResultType>(body: _decode<Item>(jsonRes.body));
  }

  @override
  Request convertRequest(Request request) => super.convertRequest(request);

  Response convertError<ResultType, Item>(Response response) {
    final jsonRes = super.convertError(response);
    if (response.statusCode.toString().startsWith('5')) {
      throw NetworkException(
          'Oops somethings when wrong, please contact our customer support');
    }
    final errorResponse = jsonRes.replace<ErrorResponse>(
      body: ErrorResponse.fromJson(jsonRes.body),
    );
    final error = errorResponse.body;
    if (error != null && error is ErrorResponse) {
      throw NetworkException(error.message);
    }
    return errorResponse;
  }
}
