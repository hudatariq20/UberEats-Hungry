part of 'restaurant_details_screen.dart';

class _RestaurantAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _RestaurantAppBar();

  @override
  Widget build(BuildContext context) {
    final restaurant = context.watch<RestaurantBloc>().state.restaurant;
    return AppBar(
      toolbarHeight: 150,
      leading: Column(
        children: [
          IconButton.filled(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))
        ],
      ),
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          (restaurant?.imageUrl != null)
              ? Image.network(
                  (restaurant?.imageUrl)!,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                (restaurant?.imageUrl != null) ?
                Transform.translate(offset: const Offset(0.0,50.0), child: CircleAvatar(
                  radius: 53,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(backgroundImage: NetworkImage(restaurant!.imageUrl!), radius: 50, ),
                ),) : const SizedBox(),
              ],
            )
        ],
      ),
      actions: [
        Column(
          children: [
            Row(
              children: [
                IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.search_off_outlined),
                    color: Colors.white),
                IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    color: Colors.white),
                IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz_outlined),
                    color: Colors.white),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
