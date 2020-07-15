// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return _PostResponse.fromJson(json);
}

class _$PostResponseTearOff {
  const _$PostResponseTearOff();

// ignore: unused_element
  _PostResponse call({@required List<Post> posts}) {
    return _PostResponse(
      posts: posts,
    );
  }
}

// ignore: unused_element
const $PostResponse = _$PostResponseTearOff();

mixin _$PostResponse {
  List<Post> get posts;

  Map<String, dynamic> toJson();
  $PostResponseCopyWith<PostResponse> get copyWith;
}

abstract class $PostResponseCopyWith<$Res> {
  factory $PostResponseCopyWith(
          PostResponse value, $Res Function(PostResponse) then) =
      _$PostResponseCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

class _$PostResponseCopyWithImpl<$Res> implements $PostResponseCopyWith<$Res> {
  _$PostResponseCopyWithImpl(this._value, this._then);

  final PostResponse _value;
  // ignore: unused_field
  final $Res Function(PostResponse) _then;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

abstract class _$PostResponseCopyWith<$Res>
    implements $PostResponseCopyWith<$Res> {
  factory _$PostResponseCopyWith(
          _PostResponse value, $Res Function(_PostResponse) then) =
      __$PostResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts});
}

class __$PostResponseCopyWithImpl<$Res> extends _$PostResponseCopyWithImpl<$Res>
    implements _$PostResponseCopyWith<$Res> {
  __$PostResponseCopyWithImpl(
      _PostResponse _value, $Res Function(_PostResponse) _then)
      : super(_value, (v) => _then(v as _PostResponse));

  @override
  _PostResponse get _value => super._value as _PostResponse;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_PostResponse(
      posts: posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

@JsonSerializable()
class _$_PostResponse with DiagnosticableTreeMixin implements _PostResponse {
  const _$_PostResponse({@required this.posts}) : assert(posts != null);

  factory _$_PostResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PostResponseFromJson(json);

  @override
  final List<Post> posts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostResponse(posts: $posts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostResponse'))
      ..add(DiagnosticsProperty('posts', posts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostResponse &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$PostResponseCopyWith<_PostResponse> get copyWith =>
      __$PostResponseCopyWithImpl<_PostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostResponseToJson(this);
  }
}

abstract class _PostResponse implements PostResponse {
  const factory _PostResponse({@required List<Post> posts}) = _$_PostResponse;

  factory _PostResponse.fromJson(Map<String, dynamic> json) =
      _$_PostResponse.fromJson;

  @override
  List<Post> get posts;
  @override
  _$PostResponseCopyWith<_PostResponse> get copyWith;
}
