import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuk_makan_app/data/api/api_services.dart';
import 'package:yuk_makan_app/data/model/response_list/response.dart';
part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  RestaurantBloc() : super(const Initial()) {
    final ApiServices apiServices = ApiServices();
    on<RestaurantEvent>(
      (event, emit) async {
        if (state is Initial) {
          emit(const RestaurantState.loading());

          await apiServices.getRestaurants().then((restaurants) {
            emit(RestaurantState.loaded(restaurants));
          }).catchError((e) {
            emit(RestaurantState.error(e.toString()));
          });
        }

        if (state is Loaded) {
          final data = (state as Loaded).restaurants;

          emit(
            await event.when(started: () async {
              return RestaurantState.loaded(data);
            }, loadMore: () async {
              log("event type : ${event.runtimeType}" as num);
              emit(const RestaurantState.loading());

              try {
                final result = await apiServices.getRestaurants();
                return RestaurantState.loaded(result);
              } catch (error) {
                return RestaurantState.error(error.toString());
              }
            }),
          );
        }
      },
    );
  }
}
