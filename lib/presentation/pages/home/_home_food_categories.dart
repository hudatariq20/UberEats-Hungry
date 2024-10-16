part of 'home_screen.dart';

class HomeFoodCategories extends StatelessWidget {
  HomeFoodCategories();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(
            children: state.foodCategories.take(5).map((category) {
          return Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: colorScheme.background,
                    child: Image.asset(category.imageUrl)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  category.name,
                  maxLines: 1,
                  style: textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ));
        }).toList());
      },
    );
  }
}
