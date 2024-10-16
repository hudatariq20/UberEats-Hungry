part of 'home_screen.dart';

class _ShopsNearBy extends StatelessWidget {
  const _ShopsNearBy({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: 'Shops Near you',
            action: 'See All',
            onPressed: () {},
          ),
          //create singlechildscrollview in horizontal direction.. and children is a row with shops
          //coming from states..data
          //return a container.. set a margin ..right:12.0? whyy
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    [...state.shopsNearBy, ...state.shopsNearBy].map((shop) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          child: CircleAvatar(
                            radius: 36,
                            //backgroundColor: colorScheme.background,
                            child:
                                ClipOval(child: Image.asset(shop['imageUrl'])),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          shop['title'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          shop['subtitle'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall,
                        )
                      ],
                    ),
                  );
                }).toList(),
              )),
          Divider(
            color: colorScheme.surfaceVariant,
            indent: 8.0,
            endIndent: 8.0,
          ),
        const SizedBox(height: 8.0)
        ],
      );
    });
  }
}
