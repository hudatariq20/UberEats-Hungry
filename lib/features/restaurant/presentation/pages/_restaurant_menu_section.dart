part of 'restaurant_details_screen.dart';

class _RestaurantMenuSection extends StatelessWidget {
  const _RestaurantMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantState>(
      builder: (context, state) {
        return Column(
          children: state.restaurant!.menu
              .map((section) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      SectionTitle(title: section.name),
                      //listview builder...
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: section.items.length,
                          itemBuilder: (context, index) {
                            final menuItems = section.items[index];
                            return MenuItemCard(menuItem: menuItems);
                          }),
                      // ListView.builder(
                      //     itemCount: section.items.length,
                      //     itemBuilder: (context, index) {
                      //       return Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Expanded(child: Column(
                      //                 children: [
                      //                   Text(section.items[index].name),
                      //                   Text(section.items[index].price.toString()),
                      //                   Text(section.items[index].description.toString())
                      //                 ],
                      //             ),
                      //             ),
                      //           ],
                      //           //column
                      //           //image in container
                      //         ),
                      //       );
                      //     }),
                      Divider(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        indent: 8.0,
                        endIndent: 8.0,
                      )
                    ],
                  ))
              .toList(),
        );
      },
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final MenuItem menuItem;
  const MenuItemCard({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Material(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(menuItem.name, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
                      Text('\$${menuItem.price.toString()}', ),
                      Text(menuItem.description ?? '',style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                
                ),
              ),
              const SizedBox(height: 8.0,),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(menuItem.imageUrl!, height: 100, width: 100,fit: BoxFit.cover,),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: IconButton.filled(onPressed: (){}, icon: Icon(Icons.add, color: Colors.white,)))
                ],
              )
            ],
        ),
      ),
    );
  }
}
