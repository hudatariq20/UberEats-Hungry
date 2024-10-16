part of 'restaurant_bloc_bloc.dart';

class RestaurantEvent extends Equatable {
  const RestaurantEvent();
  @override
  List<Object?> get props => [];
}

class LoadRestaurantEvent extends RestaurantEvent {
  const LoadRestaurantEvent({required this.restaurantId});

  final String restaurantId;

  @override
  List<Object?> get props => [restaurantId];
}
