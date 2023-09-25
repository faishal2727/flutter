part of 'bloc_detail_bloc.dart';

@freezed
class BlocDetailState with _$BlocDetailState {
  const factory BlocDetailState.initial() = _Initial;
  const factory BlocDetailState.loading() = Loading;
  const factory BlocDetailState.loaded(ResponseDetail restaurantDetail) = Loaded;
  const factory BlocDetailState.error(String error) = Error;
}
