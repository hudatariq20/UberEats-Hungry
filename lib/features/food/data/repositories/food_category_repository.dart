import 'package:core/src/entities/food_category.dart';
import 'package:uber_eats/features/food/data/models/food_data.dart';
import 'package:uber_eats/features/food/domain/repository/food_category_repository.dart';

class FoodRepository implements FoodCategoryRepository {
  const FoodRepository();
  @override
  Future<List<FoodCategory>> fetchFoodCategories() async {
    try {
      //foodCategories.map((foodCategory) => FoodCategory.fromJson(foodCategory));
      return foodCategories
          .map((category) => FoodCategory(
              id: category['id']!,
              name: category['name']!,
              imageUrl: category['imageUrl']!))
          .toList();
    } catch (err) {
      throw Exception('unable to fetch the food categories');
    }
  }
}
