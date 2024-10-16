// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:core/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_eats/features/restaurant/data/repositories/restaurant_category_repository.dart';
import 'package:uber_eats/presentation/restaurant_bloc/restaurant_bloc_bloc.dart';
import 'package:uber_eats/shared/widgets/section_title.dart';

part '_restaurant_app_bar.dart';
part '_restaurant_details_information.dart';
part '_restaurant_featured_menu_items.dart';
part '_restaurant_menu_section.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key, required this.restaurantId});
  final String restaurantId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantBloc(
          restaurantRepository: context.read<RestaurantRepository>())
        ..add(LoadRestaurantEvent(restaurantId: restaurantId)),
      child: const RestaurantDetailsView(),
    );
  }
}

class RestaurantDetailsView extends StatelessWidget {
  const RestaurantDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const _RestaurantAppBar(),
        body: BlocBuilder<RestaurantBloc, RestaurantState>(
            builder: (context, state) {
          if (state.status == RestaurantStatus.initial ||
              state.status == RestaurantStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == RestaurantStatus.loaded && state.restaurant != null) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(16).copyWith(top:80),//why copywith shit.
              child: Column(
                children: [
                
                _RestaurantInformation(),
                _FeaturedMenuItems(),
                _RestaurantMenuSection()

                ],
              ),

            );
          } else {
            return const Text('Something went wrong');
          }
        }));
  }
}
