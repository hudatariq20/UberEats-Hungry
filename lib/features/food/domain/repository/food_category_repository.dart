import 'package:core/entities.dart';

abstract class FoodCategoryRepository{
  Future<List<FoodCategory>> fetchFoodCategories();
}