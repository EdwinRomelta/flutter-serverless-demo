// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) {
  return _CommentResponse.fromJson(json);
}

class _$CommentResponseTearOff {
  const _$CommentResponseTearOff();

  _CommentResponse call({@required List<Comment> comments}) {
    return _CommentResponse(
      comments: comments,
    );
  }
}

// ignore: unused_element
const $CommentResponse = _$CommentResponseTearOff();

mixin _$CommentResponse {
  List<Comment> get comments;

  Map<String, dynamic> toJson();

  $CommentResponseCopyWith<CommentResponse> get copyWith;
}

abstract class $CommentResponseCopyWith<$Res> {
  factory $CommentResponseCopyWith(
          CommentResponse value, $Res Function(CommentResponse) then) =
      _$CommentResponseCopyWithImpl<$Res>;

  $Res call({List<Comment> comments});
}

class _$CommentResponseCopyWithImpl<$Res>
    implements $CommentResponseCopyWith<$Res> {
  _$CommentResponseCopyWithImpl(this._value, this._then);

  final CommentResponse _value;

  // ignore: unused_field
  final $Res Function(CommentResponse) _then;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

abstract class _$CommentResponseCopyWith<$Res>
    implements $CommentResponseCopyWith<$Res> {
  factory _$CommentResponseCopyWith(
          _CommentResponse value, $Res Function(_CommentResponse) then) =
      __$CommentResponseCopyWithImpl<$Res>;

  @override
  $Res call({List<Comment> comments});
}

class __$CommentResponseCopyWithImpl<$Res>
    extends _$CommentResponseCopyWithImpl<$Res>
    implements _$CommentResponseCopyWith<$Res> {
  __$CommentResponseCopyWithImpl(
      _CommentResponse _value, $Res Function(_CommentResponse) _then)
      : super(_value, (v) => _then(v as _CommentResponse));

  @override
  _CommentResponse get _value => super._value as _CommentResponse;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_CommentResponse(
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

@JsonSerializable()
class _$_CommentResponse
    with DiagnosticableTreeMixin
    implements _CommentResponse {
  const _$_CommentResponse({@required this.comments})
      : assert(comments != null);

  factory _$_CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentResponseFromJson(json);

  @override
  final List<Comment> comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentResponse(comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentResponse'))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentResponse &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  _$CommentResponseCopyWith<_CommentResponse> get copyWith =>
      __$CommentResponseCopyWithImpl<_CommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentResponseToJson(this);
  }
}

abstract class _CommentResponse implements CommentResponse {
  const factory _CommentResponse({@required List<Comment> comments}) =
      _$_CommentResponse;

  factory _CommentResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentResponse.fromJson;

  @override
  List<Comment> get comments;

  @override
  _$CommentResponseCopyWith<_CommentResponse> get copyWith;
}
