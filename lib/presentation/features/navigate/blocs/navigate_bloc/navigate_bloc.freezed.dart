// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPosts value) fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPosts value)? fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPosts value)? fetchPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateEventCopyWith<$Res> {
  factory $NavigateEventCopyWith(
          NavigateEvent value, $Res Function(NavigateEvent) then) =
      _$NavigateEventCopyWithImpl<$Res, NavigateEvent>;
}

/// @nodoc
class _$NavigateEventCopyWithImpl<$Res, $Val extends NavigateEvent>
    implements $NavigateEventCopyWith<$Res> {
  _$NavigateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPostsImplCopyWith<$Res> {
  factory _$$FetchPostsImplCopyWith(
          _$FetchPostsImpl value, $Res Function(_$FetchPostsImpl) then) =
      __$$FetchPostsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPostsImplCopyWithImpl<$Res>
    extends _$NavigateEventCopyWithImpl<$Res, _$FetchPostsImpl>
    implements _$$FetchPostsImplCopyWith<$Res> {
  __$$FetchPostsImplCopyWithImpl(
      _$FetchPostsImpl _value, $Res Function(_$FetchPostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPostsImpl implements FetchPosts {
  const _$FetchPostsImpl();

  @override
  String toString() {
    return 'NavigateEvent.fetchPosts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPostsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
  }) {
    return fetchPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPosts,
  }) {
    return fetchPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPosts value) fetchPosts,
  }) {
    return fetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPosts value)? fetchPosts,
  }) {
    return fetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPosts value)? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(this);
    }
    return orElse();
  }
}

abstract class FetchPosts implements NavigateEvent {
  const factory FetchPosts() = _$FetchPostsImpl;
}

/// @nodoc
mixin _$NavigateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<String, List<PostModel>> posts) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Either<String, List<PostModel>> posts)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<String, List<PostModel>> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateInitial value) initial,
    required TResult Function(NavigateLoading value) loading,
    required TResult Function(NavigateSuccess value) success,
    required TResult Function(NavigateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateInitial value)? initial,
    TResult? Function(NavigateLoading value)? loading,
    TResult? Function(NavigateSuccess value)? success,
    TResult? Function(NavigateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateInitial value)? initial,
    TResult Function(NavigateLoading value)? loading,
    TResult Function(NavigateSuccess value)? success,
    TResult Function(NavigateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateStateCopyWith<$Res> {
  factory $NavigateStateCopyWith(
          NavigateState value, $Res Function(NavigateState) then) =
      _$NavigateStateCopyWithImpl<$Res, NavigateState>;
}

/// @nodoc
class _$NavigateStateCopyWithImpl<$Res, $Val extends NavigateState>
    implements $NavigateStateCopyWith<$Res> {
  _$NavigateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateInitialImplCopyWith<$Res> {
  factory _$$NavigateInitialImplCopyWith(_$NavigateInitialImpl value,
          $Res Function(_$NavigateInitialImpl) then) =
      __$$NavigateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateInitialImplCopyWithImpl<$Res>
    extends _$NavigateStateCopyWithImpl<$Res, _$NavigateInitialImpl>
    implements _$$NavigateInitialImplCopyWith<$Res> {
  __$$NavigateInitialImplCopyWithImpl(
      _$NavigateInitialImpl _value, $Res Function(_$NavigateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateInitialImpl implements NavigateInitial {
  const _$NavigateInitialImpl();

  @override
  String toString() {
    return 'NavigateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<String, List<PostModel>> posts) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Either<String, List<PostModel>> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<String, List<PostModel>> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateInitial value) initial,
    required TResult Function(NavigateLoading value) loading,
    required TResult Function(NavigateSuccess value) success,
    required TResult Function(NavigateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateInitial value)? initial,
    TResult? Function(NavigateLoading value)? loading,
    TResult? Function(NavigateSuccess value)? success,
    TResult? Function(NavigateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateInitial value)? initial,
    TResult Function(NavigateLoading value)? loading,
    TResult Function(NavigateSuccess value)? success,
    TResult Function(NavigateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NavigateInitial implements NavigateState {
  const factory NavigateInitial() = _$NavigateInitialImpl;
}

/// @nodoc
abstract class _$$NavigateLoadingImplCopyWith<$Res> {
  factory _$$NavigateLoadingImplCopyWith(_$NavigateLoadingImpl value,
          $Res Function(_$NavigateLoadingImpl) then) =
      __$$NavigateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateLoadingImplCopyWithImpl<$Res>
    extends _$NavigateStateCopyWithImpl<$Res, _$NavigateLoadingImpl>
    implements _$$NavigateLoadingImplCopyWith<$Res> {
  __$$NavigateLoadingImplCopyWithImpl(
      _$NavigateLoadingImpl _value, $Res Function(_$NavigateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateLoadingImpl implements NavigateLoading {
  const _$NavigateLoadingImpl();

  @override
  String toString() {
    return 'NavigateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<String, List<PostModel>> posts) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Either<String, List<PostModel>> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<String, List<PostModel>> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateInitial value) initial,
    required TResult Function(NavigateLoading value) loading,
    required TResult Function(NavigateSuccess value) success,
    required TResult Function(NavigateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateInitial value)? initial,
    TResult? Function(NavigateLoading value)? loading,
    TResult? Function(NavigateSuccess value)? success,
    TResult? Function(NavigateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateInitial value)? initial,
    TResult Function(NavigateLoading value)? loading,
    TResult Function(NavigateSuccess value)? success,
    TResult Function(NavigateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NavigateLoading implements NavigateState {
  const factory NavigateLoading() = _$NavigateLoadingImpl;
}

/// @nodoc
abstract class _$$NavigateSuccessImplCopyWith<$Res> {
  factory _$$NavigateSuccessImplCopyWith(_$NavigateSuccessImpl value,
          $Res Function(_$NavigateSuccessImpl) then) =
      __$$NavigateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<String, List<PostModel>> posts});
}

/// @nodoc
class __$$NavigateSuccessImplCopyWithImpl<$Res>
    extends _$NavigateStateCopyWithImpl<$Res, _$NavigateSuccessImpl>
    implements _$$NavigateSuccessImplCopyWith<$Res> {
  __$$NavigateSuccessImplCopyWithImpl(
      _$NavigateSuccessImpl _value, $Res Function(_$NavigateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$NavigateSuccessImpl(
      null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Either<String, List<PostModel>>,
    ));
  }
}

/// @nodoc

class _$NavigateSuccessImpl implements NavigateSuccess {
  const _$NavigateSuccessImpl(this.posts);

  @override
  final Either<String, List<PostModel>> posts;

  @override
  String toString() {
    return 'NavigateState.success(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateSuccessImpl &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, posts);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateSuccessImplCopyWith<_$NavigateSuccessImpl> get copyWith =>
      __$$NavigateSuccessImplCopyWithImpl<_$NavigateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<String, List<PostModel>> posts) success,
    required TResult Function(String message) failure,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Either<String, List<PostModel>> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<String, List<PostModel>> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateInitial value) initial,
    required TResult Function(NavigateLoading value) loading,
    required TResult Function(NavigateSuccess value) success,
    required TResult Function(NavigateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateInitial value)? initial,
    TResult? Function(NavigateLoading value)? loading,
    TResult? Function(NavigateSuccess value)? success,
    TResult? Function(NavigateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateInitial value)? initial,
    TResult Function(NavigateLoading value)? loading,
    TResult Function(NavigateSuccess value)? success,
    TResult Function(NavigateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NavigateSuccess implements NavigateState {
  const factory NavigateSuccess(final Either<String, List<PostModel>> posts) =
      _$NavigateSuccessImpl;

  Either<String, List<PostModel>> get posts;

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateSuccessImplCopyWith<_$NavigateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateFailureImplCopyWith<$Res> {
  factory _$$NavigateFailureImplCopyWith(_$NavigateFailureImpl value,
          $Res Function(_$NavigateFailureImpl) then) =
      __$$NavigateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NavigateFailureImplCopyWithImpl<$Res>
    extends _$NavigateStateCopyWithImpl<$Res, _$NavigateFailureImpl>
    implements _$$NavigateFailureImplCopyWith<$Res> {
  __$$NavigateFailureImplCopyWithImpl(
      _$NavigateFailureImpl _value, $Res Function(_$NavigateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NavigateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateFailureImpl implements NavigateFailure {
  const _$NavigateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NavigateState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateFailureImplCopyWith<_$NavigateFailureImpl> get copyWith =>
      __$$NavigateFailureImplCopyWithImpl<_$NavigateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<String, List<PostModel>> posts) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Either<String, List<PostModel>> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<String, List<PostModel>> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateInitial value) initial,
    required TResult Function(NavigateLoading value) loading,
    required TResult Function(NavigateSuccess value) success,
    required TResult Function(NavigateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateInitial value)? initial,
    TResult? Function(NavigateLoading value)? loading,
    TResult? Function(NavigateSuccess value)? success,
    TResult? Function(NavigateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateInitial value)? initial,
    TResult Function(NavigateLoading value)? loading,
    TResult Function(NavigateSuccess value)? success,
    TResult Function(NavigateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NavigateFailure implements NavigateState {
  const factory NavigateFailure(final String message) = _$NavigateFailureImpl;

  String get message;

  /// Create a copy of NavigateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateFailureImplCopyWith<_$NavigateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
