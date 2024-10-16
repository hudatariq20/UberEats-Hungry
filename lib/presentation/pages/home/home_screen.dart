// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:core/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_eats/presentation/home_bloc/home_bloc.dart';
import 'package:uber_eats/presentation/pages/home/_home_app_bar.dart';
import 'package:uber_eats/shared/widgets/custom_action_widget.dart';
import 'package:uber_eats/shared/widgets/main_nav_bar.dart';
import 'package:uber_eats/shared/widgets/rating_modal.dart';
import 'package:uber_eats/shared/widgets/section_title.dart';

import '../../../shared/widgets/restaurant_preview_card.dart';
part '_home_food_categories.dart';
part '_home_restaurant_filter.dart';
part '_home_featured_restaurants.dart';
part '_home_popular_restaurants.dart';
part '_home_shops_nearby.dart';

class HomeScreen extends StatelessWidget {
  const   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: const MainNavBar(),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == HomeStatus.loading || state.status == HomeStatus.initial) {
            return Center(child: CircularProgressIndicator());
          } else if (state.status == HomeStatus.loaded) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  HomeFoodCategories(),
                  const SizedBox(height: 8.0,),
                  HomeRestaurantFilter(),
                 _FeaturedRestaurants(),
                  _ShopsNearBy(),
                  _PopularRestaurants()
                ],
              ),
            );
          } else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
