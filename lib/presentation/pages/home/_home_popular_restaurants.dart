

part of 'home_screen.dart';

class _PopularRestaurants extends StatelessWidget {
  const _PopularRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SectionTitle(
              title: 'Popular Near you',
              action: 'See All',
              onPressed: () {},
            ),
            SizedBox(
              //make a fixed sized box for the list view.
              height: 185,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.popularRestaurants.length,
                  itemBuilder: (context, index) {
                    final restaurant = state.popularRestaurants[index];
                    return SizedBox(
                      //sized box to hold the individual preview card.
                      //hold the width size according to preference on the screen
                      width: size.width * 0.8,
                      child: RestaurantCardPreview(restaurant: restaurant),
                    );
                  }),
            ),
            Divider(
              color: colorScheme.surfaceVariant,
              indent: 8.0,
              endIndent: 8.0,
            )
          ],
        );
      },
    );
  }
}
