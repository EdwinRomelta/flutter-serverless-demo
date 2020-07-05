// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

class _$ErrorResponseTearOff {
  const _$ErrorResponseTearOff();

  _ErrorResponse call({@required bool error, @required String message}) {
    return _ErrorResponse(
      error: error,
      message: message,
    );
  }
}

// ignore: unused_element
const $ErrorResponse = _$ErrorResponseTearOff();

mixin _$ErrorResponse {
  bool get error;
  String get message;

  Map<String, dynamic> toJson();
  $ErrorResponseCopyWith<ErrorResponse> get copyWith;
}

abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  $Res call({bool error, String message});
}

class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  final ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorResponse) _then;

  @override
  $Res call({
    Object error = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$ErrorResponseCopyWith(
          _ErrorResponse value, $Res Function(_ErrorResponse) then) =
      __$ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool error, String message});
}

class __$ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res>
    implements _$ErrorResponseCopyWith<$Res> {
  __$ErrorResponseCopyWithImpl(
      _ErrorResponse _value, $Res Function(_ErrorResponse) _then)
      : super(_value, (v) => _then(v as _ErrorResponse));

  @override
  _ErrorResponse get _value => super._value as _ErrorResponse;

  @override
  $Res call({
    Object error = freezed,
    Object message = freezed,
  }) {
    return _then(_ErrorResponse(
      error: error == freezed ? _value.error : error as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$_ErrorResponse with DiagnosticableTreeMixin implements _ErrorResponse {
  const _$_ErrorResponse({@required this.error, @required this.message})
      : assert(error != null),
        assert(message != null);

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorResponse(error: $error, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorResponse'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResponse &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith =>
      __$ErrorResponseCopyWithImpl<_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(
      {@required bool error, @required String message}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith;
}
