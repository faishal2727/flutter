import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuk_makan_app/data/api/api_services.dart';
import 'package:yuk_makan_app/data/model/response_search.dart/response_search.dart';
part 'searh_bloc_event.dart';
part 'searh_bloc_state.dart';
part 'searh_bloc_bloc.freezed.dart';

class SearhBlocBloc extends Bloc<SearhBlocEvent, SearhBlocState> {
  SearhBlocBloc() : super(const SearchEmpty()) {
    final ApiServices apiServices = ApiServices();
    on<SearhBlocEvent>((event, emit) async {
      await event.when(
        onQueryChanged: (query) async {
          emit(const Loading());
          try {
            final response = await apiServices.searchResto(query);
            emit(Loaded(response));
          } catch (e) {
            print("Error: $e");
            emit(Error('Failed to load resto: $e'));
          }
        },
      );
    });
  }
}
