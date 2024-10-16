part of 'restaurant_bloc_bloc.dart';

enum RestaurantStatus { initial, loading, loaded, error }

class RestaurantState extends Equatable {
  final RestaurantStatus status;
  final Restaurant? restaurant;

  const RestaurantState(
      {this.status = RestaurantStatus.initial, this.restaurant});

  RestaurantState copyWith({RestaurantStatus? status, Restaurant? restaurant}) {
    return RestaurantState(
        status: status ?? this.status,
        restaurant: restaurant ?? this.restaurant);
  }

  @override
  List<Object?> get props => [status, restaurant];
}
