part of 'restaurant_bloc.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState.initial() = Initial;
  const factory RestaurantState.loading() = Loading;
  const factory RestaurantState.loaded(ResponseRestaurants restaurants) = Loaded;
  const factory RestaurantState.error(String message) = Error;
}
