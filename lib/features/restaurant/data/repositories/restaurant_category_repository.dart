import 'package:core/entities.dart';
import 'package:uber_eats/features/restaurant/data/models/restaurant_data.dart';
import 'package:uber_eats/features/restaurant/domain/repository/restaurant_category_repository.dart';

class RestaurantRepository implements RestaurantCategoryRepository {
  const RestaurantRepository();
  @override
  Future<List<Restaurant>> fetchFeaturedRestaurants() async {
    return fetchRestaurants();
  }

  @override
  Future<List<Restaurant>> fetchPopularRestaurants() async {
    return fetchRestaurants();
  }

  @override
  Future<Restaurant?> fetchRestaurant({required String restaurantId}) async {
    try {
      final restaurant = restaurants
          .firstWhere((restaurant) => restaurant['id'] == restaurantId);
      return Restaurant.fromJson(restaurant);
    } catch (err) {
      throw Exception('Unable to fetch the restaurant: $err');
    }
  }

  @override
  Future<List<Restaurant>> fetchRestaurants() async {
    try {
      return restaurants
          .map((restaurant) => Restaurant.fromJson(restaurant))
          .toList();
    } catch (err) {
      throw Exception('Unable to fetch the restaurants: $err');
    }
  }
}
