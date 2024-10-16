import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      toolbarHeight: 80,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Deliver now',
            style: textTheme.bodyLarge,
          ),
          Row(
            children: [
              Text('Your location',
                  style: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
              Icon(
                Icons.expand_more,
                color: colorScheme.onBackground,
              )
            ],
          ),
        ],
      ),
      actions: [
        Switch(
          value: true,
          onChanged: (value) {},
          thumbIcon:
              const MaterialStatePropertyAll(Icon(Icons.delivery_dining)),
        ),
        const SizedBox(
          width: 8,
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 4),
          child: TextFormField(
            onChanged: (value){},
            decoration: const InputDecoration(
              hintText: 'Search for restaurants, dishes....',
              prefixIcon: Icon(Icons.search)
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(128);
}

