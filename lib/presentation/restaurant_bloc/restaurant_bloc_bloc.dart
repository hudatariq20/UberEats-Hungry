import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:uber_eats/features/restaurant/data/repositories/restaurant_category_repository.dart';

part 'restaurant_bloc_event.dart';
part 'restaurant_bloc_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final RestaurantRepository _restaurantRepository;
  RestaurantBloc({required RestaurantRepository restaurantRepository})
      : _restaurantRepository = restaurantRepository,
        super(const RestaurantState()) {
    on<LoadRestaurantEvent>(_onLoadRestaurantEvent);
  }

  Future<void> _onLoadRestaurantEvent(
      LoadRestaurantEvent event, Emitter<RestaurantState> emit) async {
    emit(state.copyWith(status: RestaurantStatus.loading));
    try {
      final restaurant = await _restaurantRepository.fetchRestaurant(
          restaurantId: event.restaurantId);
      emit(state.copyWith(
          status: RestaurantStatus.loaded, restaurant: restaurant));
    } catch (err) {
      emit(state.copyWith(status: RestaurantStatus.error));
    }
  }
}
