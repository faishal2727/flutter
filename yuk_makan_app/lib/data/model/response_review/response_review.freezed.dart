// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseReview _$ResponseReviewFromJson(Map<String, dynamic> json) {
  return _ResponseReview.fromJson(json);
}

/// @nodoc
mixin _$ResponseReview {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<CustomerReviews>? get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseReviewCopyWith<ResponseReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseReviewCopyWith<$Res> {
  factory $ResponseReviewCopyWith(
          ResponseReview value, $Res Function(ResponseReview) then) =
      _$ResponseReviewCopyWithImpl<$Res, ResponseReview>;
  @useResult
  $Res call(
      {bool? error, String? message, List<CustomerReviews>? customerReviews});
}

/// @nodoc
class _$ResponseReviewCopyWithImpl<$Res, $Val extends ResponseReview>
    implements $ResponseReviewCopyWith<$Res> {
  _$ResponseReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? customerReviews = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      customerReviews: freezed == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviews>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseReviewCopyWith<$Res>
    implements $ResponseReviewCopyWith<$Res> {
  factory _$$_ResponseReviewCopyWith(
          _$_ResponseReview value, $Res Function(_$_ResponseReview) then) =
      __$$_ResponseReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? error, String? message, List<CustomerReviews>? customerReviews});
}

/// @nodoc
class __$$_ResponseReviewCopyWithImpl<$Res>
    extends _$ResponseReviewCopyWithImpl<$Res, _$_ResponseReview>
    implements _$$_ResponseReviewCopyWith<$Res> {
  __$$_ResponseReviewCopyWithImpl(
      _$_ResponseReview _value, $Res Function(_$_ResponseReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? customerReviews = freezed,
  }) {
    return _then(_$_ResponseReview(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviews>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseReview
    with DiagnosticableTreeMixin
    implements _ResponseReview {
  const _$_ResponseReview(
      {this.error, this.message, final List<CustomerReviews>? customerReviews})
      : _customerReviews = customerReviews;

  factory _$_ResponseReview.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseReviewFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  final List<CustomerReviews>? _customerReviews;
  @override
  List<CustomerReviews>? get customerReviews {
    final value = _customerReviews;
    if (value == null) return null;
    if (_customerReviews is EqualUnmodifiableListView) return _customerReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseReview(error: $error, message: $message, customerReviews: $customerReviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseReview'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('customerReviews', customerReviews));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseReview &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseReviewCopyWith<_$_ResponseReview> get copyWith =>
      __$$_ResponseReviewCopyWithImpl<_$_ResponseReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseReviewToJson(
      this,
    );
  }
}

abstract class _ResponseReview implements ResponseReview {
  const factory _ResponseReview(
      {final bool? error,
      final String? message,
      final List<CustomerReviews>? customerReviews}) = _$_ResponseReview;

  factory _ResponseReview.fromJson(Map<String, dynamic> json) =
      _$_ResponseReview.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  List<CustomerReviews>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseReviewCopyWith<_$_ResponseReview> get copyWith =>
      throw _privateConstructorUsedError;
}
