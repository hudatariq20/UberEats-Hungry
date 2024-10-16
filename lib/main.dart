import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_eats/features/food/data/models/food_data.dart';
import 'package:uber_eats/features/food/data/repositories/food_category_repository.dart';
import 'package:uber_eats/features/food/domain/repository/food_category_repository.dart';
import 'package:uber_eats/features/restaurant/data/repositories/restaurant_category_repository.dart';
import 'package:uber_eats/presentation/home_bloc/home_bloc.dart';
import 'package:uber_eats/presentation/pages/home/home_screen.dart';
import 'package:uber_eats/shared/theme.dart';

void main() {
  const foodCategoryRepository = FoodRepository();
  const restaurantCategoryRepository = RestaurantRepository();

  runApp(const MyApp(
    foodCategoryRepository: foodCategoryRepository,
    restaurantCategoryRepository: restaurantCategoryRepository,
  ));
}

class MyApp extends StatelessWidget {
  final FoodRepository foodCategoryRepository;
  final RestaurantRepository restaurantCategoryRepository;
  const MyApp({
    super.key,
    required this.foodCategoryRepository,
    required this.restaurantCategoryRepository,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: foodCategoryRepository),
        RepositoryProvider.value(value: restaurantCategoryRepository)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: ((context) =>
          HomeBloc(foodCategoryRepository: foodCategoryRepository,
          restaurantCategoryRepository: restaurantCategoryRepository)
          ..add(LoadHomeEvent()))),
         
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: const AppTheme().themeData,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
