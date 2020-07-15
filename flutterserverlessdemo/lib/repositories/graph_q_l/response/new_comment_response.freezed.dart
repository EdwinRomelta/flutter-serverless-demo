// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewCommentResponse _$NewCommentResponseFromJson(Map<String, dynamic> json) {
  return _NewCommentResponse.fromJson(json);
}

class _$NewCommentResponseTearOff {
  const _$NewCommentResponseTearOff();

  _NewCommentResponse call({@required Comment insertCommentsOne}) {
    return _NewCommentResponse(
      insertCommentsOne: insertCommentsOne,
    );
  }
}

// ignore: unused_element
const $NewCommentResponse = _$NewCommentResponseTearOff();

mixin _$NewCommentResponse {
  Comment get insertCommentsOne;

  Map<String, dynamic> toJson();
  $NewCommentResponseCopyWith<NewCommentResponse> get copyWith;
}

abstract class $NewCommentResponseCopyWith<$Res> {
  factory $NewCommentResponseCopyWith(
          NewCommentResponse value, $Res Function(NewCommentResponse) then) =
      _$NewCommentResponseCopyWithImpl<$Res>;
  $Res call({Comment insertCommentsOne});

  $CommentCopyWith<$Res> get insertCommentsOne;
}

class _$NewCommentResponseCopyWithImpl<$Res>
    implements $NewCommentResponseCopyWith<$Res> {
  _$NewCommentResponseCopyWithImpl(this._value, this._then);

  final NewCommentResponse _value;
  // ignore: unused_field
  final $Res Function(NewCommentResponse) _then;

  @override
  $Res call({
    Object insertCommentsOne = freezed,
  }) {
    return _then(_value.copyWith(
      insertCommentsOne: insertCommentsOne == freezed
          ? _value.insertCommentsOne
          : insertCommentsOne as Comment,
    ));
  }

  @override
  $CommentCopyWith<$Res> get insertCommentsOne {
    if (_value.insertCommentsOne == null) {
      return null;
    }
    return $CommentCopyWith<$Res>(_value.insertCommentsOne, (value) {
      return _then(_value.copyWith(insertCommentsOne: value));
    });
  }
}

abstract class _$NewCommentResponseCopyWith<$Res>
    implements $NewCommentResponseCopyWith<$Res> {
  factory _$NewCommentResponseCopyWith(
          _NewCommentResponse value, $Res Function(_NewCommentResponse) then) =
      __$NewCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({Comment insertCommentsOne});

  @override
  $CommentCopyWith<$Res> get insertCommentsOne;
}

class __$NewCommentResponseCopyWithImpl<$Res>
    extends _$NewCommentResponseCopyWithImpl<$Res>
    implements _$NewCommentResponseCopyWith<$Res> {
  __$NewCommentResponseCopyWithImpl(
      _NewCommentResponse _value, $Res Function(_NewCommentResponse) _then)
      : super(_value, (v) => _then(v as _NewCommentResponse));

  @override
  _NewCommentResponse get _value => super._value as _NewCommentResponse;

  @override
  $Res call({
    Object insertCommentsOne = freezed,
  }) {
    return _then(_NewCommentResponse(
      insertCommentsOne: insertCommentsOne == freezed
          ? _value.insertCommentsOne
          : insertCommentsOne as Comment,
    ));
  }
}

@JsonSerializable()
class _$_NewCommentResponse
    with DiagnosticableTreeMixin
    implements _NewCommentResponse {
  const _$_NewCommentResponse({@required this.insertCommentsOne})
      : assert(insertCommentsOne != null);

  factory _$_NewCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NewCommentResponseFromJson(json);

  @override
  final Comment insertCommentsOne;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewCommentResponse(insertCommentsOne: $insertCommentsOne)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewCommentResponse'))
      ..add(DiagnosticsProperty('insertCommentsOne', insertCommentsOne));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewCommentResponse &&
            (identical(other.insertCommentsOne, insertCommentsOne) ||
                const DeepCollectionEquality()
                    .equals(other.insertCommentsOne, insertCommentsOne)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(insertCommentsOne);

  @override
  _$NewCommentResponseCopyWith<_NewCommentResponse> get copyWith =>
      __$NewCommentResponseCopyWithImpl<_NewCommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewCommentResponseToJson(this);
  }
}

abstract class _NewCommentResponse implements NewCommentResponse {
  const factory _NewCommentResponse({@required Comment insertCommentsOne}) =
      _$_NewCommentResponse;

  factory _NewCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_NewCommentResponse.fromJson;

  @override
  Comment get insertCommentsOne;
  @override
  _$NewCommentResponseCopyWith<_NewCommentResponse> get copyWith;
}
