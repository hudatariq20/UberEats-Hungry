import 'package:core/entities.dart';
import 'package:uber_eats/features/restaurant/data/models/restaurant_data.dart';

abstract class RestaurantCategoryRepository {
  Future<Restaurant?> fetchRestaurant({required String restaurantId});
  Future<List<Restaurant>> fetchRestaurants();
  Future<List<Restaurant>> fetchFeaturedRestaurants();
  Future<List<Restaurant>> fetchPopularRestaurants();
}
