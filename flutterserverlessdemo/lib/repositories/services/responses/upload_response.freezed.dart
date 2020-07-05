// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return _UploadResponse.fromJson(json);
}

class _$UploadResponseTearOff {
  const _$UploadResponseTearOff();

  _UploadResponse call({@required List<UploadData> data}) {
    return _UploadResponse(
      data: data,
    );
  }
}

// ignore: unused_element
const $UploadResponse = _$UploadResponseTearOff();

mixin _$UploadResponse {
  List<UploadData> get data;

  Map<String, dynamic> toJson();
  $UploadResponseCopyWith<UploadResponse> get copyWith;
}

abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
          UploadResponse value, $Res Function(UploadResponse) then) =
      _$UploadResponseCopyWithImpl<$Res>;
  $Res call({List<UploadData> data});
}

class _$UploadResponseCopyWithImpl<$Res>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  final UploadResponse _value;
  // ignore: unused_field
  final $Res Function(UploadResponse) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<UploadData>,
    ));
  }
}

abstract class _$UploadResponseCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$UploadResponseCopyWith(
          _UploadResponse value, $Res Function(_UploadResponse) then) =
      __$UploadResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<UploadData> data});
}

class __$UploadResponseCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res>
    implements _$UploadResponseCopyWith<$Res> {
  __$UploadResponseCopyWithImpl(
      _UploadResponse _value, $Res Function(_UploadResponse) _then)
      : super(_value, (v) => _then(v as _UploadResponse));

  @override
  _UploadResponse get _value => super._value as _UploadResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_UploadResponse(
      data: data == freezed ? _value.data : data as List<UploadData>,
    ));
  }
}

@JsonSerializable()
class _$_UploadResponse
    with DiagnosticableTreeMixin
    implements _UploadResponse {
  const _$_UploadResponse({@required this.data}) : assert(data != null);

  factory _$_UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UploadResponseFromJson(json);

  @override
  final List<UploadData> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadResponse(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$UploadResponseCopyWith<_UploadResponse> get copyWith =>
      __$UploadResponseCopyWithImpl<_UploadResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UploadResponseToJson(this);
  }
}

abstract class _UploadResponse implements UploadResponse {
  const factory _UploadResponse({@required List<UploadData> data}) =
      _$_UploadResponse;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadResponse.fromJson;

  @override
  List<UploadData> get data;
  @override
  _$UploadResponseCopyWith<_UploadResponse> get copyWith;
}

UploadData _$UploadDataFromJson(Map<String, dynamic> json) {
  return _UploadData.fromJson(json);
}

class _$UploadDataTearOff {
  const _$UploadDataTearOff();

  _UploadData call({@required String path, @required String url}) {
    return _UploadData(
      path: path,
      url: url,
    );
  }
}

// ignore: unused_element
const $UploadData = _$UploadDataTearOff();

mixin _$UploadData {
  String get path;
  String get url;

  Map<String, dynamic> toJson();
  $UploadDataCopyWith<UploadData> get copyWith;
}

abstract class $UploadDataCopyWith<$Res> {
  factory $UploadDataCopyWith(
          UploadData value, $Res Function(UploadData) then) =
      _$UploadDataCopyWithImpl<$Res>;
  $Res call({String path, String url});
}

class _$UploadDataCopyWithImpl<$Res> implements $UploadDataCopyWith<$Res> {
  _$UploadDataCopyWithImpl(this._value, this._then);

  final UploadData _value;
  // ignore: unused_field
  final $Res Function(UploadData) _then;

  @override
  $Res call({
    Object path = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$UploadDataCopyWith<$Res> implements $UploadDataCopyWith<$Res> {
  factory _$UploadDataCopyWith(
          _UploadData value, $Res Function(_UploadData) then) =
      __$UploadDataCopyWithImpl<$Res>;
  @override
  $Res call({String path, String url});
}

class __$UploadDataCopyWithImpl<$Res> extends _$UploadDataCopyWithImpl<$Res>
    implements _$UploadDataCopyWith<$Res> {
  __$UploadDataCopyWithImpl(
      _UploadData _value, $Res Function(_UploadData) _then)
      : super(_value, (v) => _then(v as _UploadData));

  @override
  _UploadData get _value => super._value as _UploadData;

  @override
  $Res call({
    Object path = freezed,
    Object url = freezed,
  }) {
    return _then(_UploadData(
      path: path == freezed ? _value.path : path as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_UploadData with DiagnosticableTreeMixin implements _UploadData {
  const _$_UploadData({@required this.path, @required this.url})
      : assert(path != null),
        assert(url != null);

  factory _$_UploadData.fromJson(Map<String, dynamic> json) =>
      _$_$_UploadDataFromJson(json);

  @override
  final String path;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadData(path: $path, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadData'))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadData &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$UploadDataCopyWith<_UploadData> get copyWith =>
      __$UploadDataCopyWithImpl<_UploadData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UploadDataToJson(this);
  }
}

abstract class _UploadData implements UploadData {
  const factory _UploadData({@required String path, @required String url}) =
      _$_UploadData;

  factory _UploadData.fromJson(Map<String, dynamic> json) =
      _$_UploadData.fromJson;

  @override
  String get path;
  @override
  String get url;
  @override
  _$UploadDataCopyWith<_UploadData> get copyWith;
}
