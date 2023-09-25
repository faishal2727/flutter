part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = _Initial;
  const factory ReviewState.loading() = Loading;
  const factory ReviewState.loaded(ResponseReview postReview) = Loaded;
  const factory ReviewState.error(String message) = error;
}
