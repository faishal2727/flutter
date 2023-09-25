part of 'bloc_detail_bloc.dart';

@freezed
class BlocDetailEvent with _$BlocDetailEvent {
  const factory BlocDetailEvent.started() = _Started;
  const factory BlocDetailEvent.getDetail(String restaurantId) = GetDetail;
  const factory BlocDetailEvent.postData(String id, String name, String review) = PostData;
}