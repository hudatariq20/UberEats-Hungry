import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:core/entities.dart';
import 'package:uber_eats/features/food/domain/repository/food_category_repository.dart';
import 'package:uber_eats/features/restaurant/domain/repository/restaurant_category_repository.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FoodCategoryRepository _foodCategoryRepository;
  final RestaurantCategoryRepository _restaurantCategoryRepository;

  HomeBloc(
      {required FoodCategoryRepository foodCategoryRepository,
      required RestaurantCategoryRepository restaurantCategoryRepository})
      : _foodCategoryRepository = foodCategoryRepository,
        _restaurantCategoryRepository = restaurantCategoryRepository,
        super(const HomeState()) {
    on<LoadHomeEvent>(_onLoadHomeEvent);
  }


  Future<void> _onLoadHomeEvent(
      LoadHomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final foodCategoryFuture = _foodCategoryRepository.fetchFoodCategories();
     final featuredRestaurantFuture =
          _restaurantCategoryRepository.fetchFeaturedRestaurants();
      final popularRestaurantFuture =
          _restaurantCategoryRepository.fetchPopularRestaurants();

      final response = await Future.wait([
        foodCategoryFuture,
        featuredRestaurantFuture,
        popularRestaurantFuture
      ]);

      final foodCategories = response[0] as List<FoodCategory>;
      final featuredRestaurants = response[1] as List<Restaurant>;
      final popularRestaurants = response[2] as List<Restaurant>;
      final shopsNearBy = [
        {
          'title': '7-Eleven',
          'subtitle': '10 mins',
          'imageUrl': 'assets/images/711.png',
        },
        {
          'title': 'Guardian',
          'subtitle': '15 mins',
          'imageUrl': 'assets/images/guardian.png',
        },
        {
          'title': 'Walgreens',
          'subtitle': '15 mins',
          'imageUrl': 'assets/images/walgreens.png',
        },
      ];

      emit(state.copyWith(
          status: HomeStatus.loaded,
          foodCategories: foodCategories,
       featuredRestaurants: featuredRestaurants,
          popularRestaurants: popularRestaurants,
          shopsNearBy: shopsNearBy));
    } catch (err) {
      state.copyWith(status: HomeStatus.error);
    }
  }
}
