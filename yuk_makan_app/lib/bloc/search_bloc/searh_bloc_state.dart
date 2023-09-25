part of 'searh_bloc_bloc.dart';

@freezed
class SearhBlocState with _$SearhBlocState {
  const factory SearhBlocState.empty() = SearchEmpty;
  const factory SearhBlocState.loading() = Loading;
  const factory SearhBlocState.loaded(ResponseSearch restoCari) = Loaded;
  const factory SearhBlocState.error(String message) = Error;
}
