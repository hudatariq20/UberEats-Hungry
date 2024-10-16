
part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

class HomeState extends Equatable {
  final HomeStatus status;
  final List<FoodCategory> foodCategories;
  final List<Restaurant> featuredRestaurants;
  final List<Restaurant> popularRestaurants;
  final List<dynamic> shopsNearBy;

  const HomeState(
      {this.status = HomeStatus.initial,
      this.foodCategories = const [],
      this.featuredRestaurants = const [],
      this.popularRestaurants = const [],
      this.shopsNearBy = const []});

  HomeState copyWith(
      {HomeStatus? status,
      List<FoodCategory>? foodCategories,
      List<Restaurant>? featuredRestaurants,
      List<Restaurant>? popularRestaurants,
      List<dynamic>? shopsNearBy}) {
    return HomeState(
      status: status ?? this.status,
      foodCategories: foodCategories ?? this.foodCategories,
      featuredRestaurants: featuredRestaurants ?? this.featuredRestaurants,
      popularRestaurants: popularRestaurants ?? this.popularRestaurants,
      shopsNearBy: shopsNearBy ?? this.shopsNearBy
    );
  }

  @override
  List<Object?> get props => [
        status,
        foodCategories,
        featuredRestaurants,
        popularRestaurants,
        shopsNearBy
      ];
}
