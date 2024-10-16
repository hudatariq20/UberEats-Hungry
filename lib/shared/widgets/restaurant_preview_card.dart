import 'package:core/entities.dart';
import 'package:flutter/material.dart';
import 'package:uber_eats/features/restaurant/presentation/pages/restaurant_details_screen.dart';

class RestaurantCardPreview extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCardPreview({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RestaurantDetailsScreen(restaurantId: restaurant.id,);
          }));
        },
        child: Container(
          //make a container to define the width, margin, and decoration style for the card.
          width: size.width,
          margin: const EdgeInsets.only(bottom: 8.0, right: 8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      restaurant.imageUrl!,
                      height: 125,
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      //add the little chip on left on the top of clipRRect picture.
                      left: 8.0,
                      child: Chip(
                          side: BorderSide.none,
                          label: Text(
                            '2 offers available',
                            style: textTheme.bodySmall,
                          )))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurant.name,
                            style: textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '\$0.49 Delivery Fee • 25 - 35 mins',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )),
                      CircleAvatar(
                        radius: 16.0,
                        foregroundColor: colorScheme.primary,
                        backgroundColor: colorScheme.surfaceVariant,
                        child: Text(
                          restaurant.rating.toString(),
                          style: textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ));
  }
}
