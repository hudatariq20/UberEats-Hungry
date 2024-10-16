import 'package:core/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/address.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    required String name,
    @Default([]) List<FoodCategory> foodCategory,
    String? description,
    required Address address,
    required List<MenuSection> menu,
    @Default([]) List<MenuItem> featuredMenuItems,
    String? imageUrl,
    @Default([]) List<String> additionalImageUrl,
    @Default([]) List<workingHour> workingHours,
    double? rating,
    int? reviewsCount,
    List<Review>? reviews
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, Object?> json) =>
      _$RestaurantFromJson(json);
}
