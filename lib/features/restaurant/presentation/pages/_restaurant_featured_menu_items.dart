part of 'restaurant_details_screen.dart';

class _FeaturedMenuItems extends StatelessWidget {
  const _FeaturedMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantState>(
        builder: (context, state) {
      return (state.restaurant?.featuredMenuItems.isNotEmpty ?? false)
          ? Column(
              children: [
                const SizedBox(height: 16.0),
                const SectionTitle(title: 'Featured Items'),
                SizedBox(
                    height: 185,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.restaurant!.featuredMenuItems.length,
                      itemBuilder: (context, index) {
                        //make one card
                        final featuredItem =
                            state.restaurant!.featuredMenuItems[index];
                        return SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            child: FeaturedCardPreview(menuItem: featuredItem));
                      },
                    )),
                Divider(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  indent: 8.0,
                  endIndent: 8.0,
                ),
                const SizedBox(
                  height: 8.0,
                )
              ],
            )
          : SizedBox();
    });
  }
}

class FeaturedCardPreview extends StatelessWidget {
  final MenuItem menuItem;
  FeaturedCardPreview({super.key, required this.menuItem}) {
    debugPrint(menuItem.imageUrl!);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
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
                  menuItem.imageUrl!,
                  height: 125,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  right: 4.0,
                  bottom: 4.0,
                  child: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItem.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${menuItem.price}',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
