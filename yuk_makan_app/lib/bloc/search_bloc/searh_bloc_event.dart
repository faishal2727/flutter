part of 'searh_bloc_bloc.dart';

@freezed
class SearhBlocEvent with _$SearhBlocEvent {
  const factory SearhBlocEvent.onQueryChanged(String query) = OnQueryChanged;
}
