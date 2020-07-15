// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewPostResponse _$NewPostResponseFromJson(Map<String, dynamic> json) {
  return _NewPostResponse.fromJson(json);
}

class _$NewPostResponseTearOff {
  const _$NewPostResponseTearOff();

// ignore: unused_element
  _NewPostResponse call({@required Post insertPostsOne}) {
    return _NewPostResponse(
      insertPostsOne: insertPostsOne,
    );
  }
}

// ignore: unused_element
const $NewPostResponse = _$NewPostResponseTearOff();

mixin _$NewPostResponse {
  Post get insertPostsOne;

  Map<String, dynamic> toJson();
  $NewPostResponseCopyWith<NewPostResponse> get copyWith;
}

abstract class $NewPostResponseCopyWith<$Res> {
  factory $NewPostResponseCopyWith(
          NewPostResponse value, $Res Function(NewPostResponse) then) =
      _$NewPostResponseCopyWithImpl<$Res>;
  $Res call({Post insertPostsOne});

  $PostCopyWith<$Res> get insertPostsOne;
}

class _$NewPostResponseCopyWithImpl<$Res>
    implements $NewPostResponseCopyWith<$Res> {
  _$NewPostResponseCopyWithImpl(this._value, this._then);

  final NewPostResponse _value;
  // ignore: unused_field
  final $Res Function(NewPostResponse) _then;

  @override
  $Res call({
    Object insertPostsOne = freezed,
  }) {
    return _then(_value.copyWith(
      insertPostsOne: insertPostsOne == freezed
          ? _value.insertPostsOne
          : insertPostsOne as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get insertPostsOne {
    if (_value.insertPostsOne == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.insertPostsOne, (value) {
      return _then(_value.copyWith(insertPostsOne: value));
    });
  }
}

abstract class _$NewPostResponseCopyWith<$Res>
    implements $NewPostResponseCopyWith<$Res> {
  factory _$NewPostResponseCopyWith(
          _NewPostResponse value, $Res Function(_NewPostResponse) then) =
      __$NewPostResponseCopyWithImpl<$Res>;
  @override
  $Res call({Post insertPostsOne});

  @override
  $PostCopyWith<$Res> get insertPostsOne;
}

class __$NewPostResponseCopyWithImpl<$Res>
    extends _$NewPostResponseCopyWithImpl<$Res>
    implements _$NewPostResponseCopyWith<$Res> {
  __$NewPostResponseCopyWithImpl(
      _NewPostResponse _value, $Res Function(_NewPostResponse) _then)
      : super(_value, (v) => _then(v as _NewPostResponse));

  @override
  _NewPostResponse get _value => super._value as _NewPostResponse;

  @override
  $Res call({
    Object insertPostsOne = freezed,
  }) {
    return _then(_NewPostResponse(
      insertPostsOne: insertPostsOne == freezed
          ? _value.insertPostsOne
          : insertPostsOne as Post,
    ));
  }
}

@JsonSerializable()
class _$_NewPostResponse
    with DiagnosticableTreeMixin
    implements _NewPostResponse {
  const _$_NewPostResponse({@required this.insertPostsOne})
      : assert(insertPostsOne != null);

  factory _$_NewPostResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NewPostResponseFromJson(json);

  @override
  final Post insertPostsOne;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewPostResponse(insertPostsOne: $insertPostsOne)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewPostResponse'))
      ..add(DiagnosticsProperty('insertPostsOne', insertPostsOne));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPostResponse &&
            (identical(other.insertPostsOne, insertPostsOne) ||
                const DeepCollectionEquality()
                    .equals(other.insertPostsOne, insertPostsOne)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(insertPostsOne);

  @override
  _$NewPostResponseCopyWith<_NewPostResponse> get copyWith =>
      __$NewPostResponseCopyWithImpl<_NewPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewPostResponseToJson(this);
  }
}

abstract class _NewPostResponse implements NewPostResponse {
  const factory _NewPostResponse({@required Post insertPostsOne}) =
      _$_NewPostResponse;

  factory _NewPostResponse.fromJson(Map<String, dynamic> json) =
      _$_NewPostResponse.fromJson;

  @override
  Post get insertPostsOne;
  @override
  _$NewPostResponseCopyWith<_NewPostResponse> get copyWith;
}
