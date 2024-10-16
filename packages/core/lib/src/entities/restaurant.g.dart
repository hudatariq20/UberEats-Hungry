// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantImpl _$$RestaurantImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      foodCategory: (json['foodCategory'] as List<dynamic>?)
              ?.map((e) => FoodCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String?,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      menu: (json['menu'] as List<dynamic>)
          .map((e) => MenuSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredMenuItems: (json['featuredMenuItems'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageUrl: json['imageUrl'] as String?,
      additionalImageUrl: (json['additionalImageUrl'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      workingHours: (json['workingHours'] as List<dynamic>?)
              ?.map((e) => workingHour.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurantImplToJson(_$RestaurantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'foodCategory': instance.foodCategory,
      'description': instance.description,
      'address': instance.address,
      'menu': instance.menu,
      'featuredMenuItems': instance.featuredMenuItems,
      'imageUrl': instance.imageUrl,
      'additionalImageUrl': instance.additionalImageUrl,
      'workingHours': instance.workingHours,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'reviews': instance.reviews,
    };
