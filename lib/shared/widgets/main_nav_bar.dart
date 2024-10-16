import 'package:flutter/material.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BottomNavigationBar(
      backgroundColor: colorScheme.background,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onBackground.withOpacity(.5),
      showUnselectedLabels: true,
      unselectedFontSize: 14,
      unselectedLabelStyle: textTheme.bodySmall,
      selectedLabelStyle: textTheme.bodySmall,
      type: BottomNavigationBarType.fixed,
       onTap: (index) {
        switch (index) {
          case 0:
           // context.pushNamed('home');
            break;
          case 1:
         //   context.pushNamed('search');
            break;
          case 2:
          //  context.pushNamed('cart');
            break;
          case 3:
         //   context.pushNamed('user-account');
            break;
          default:
        }
      },
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

      ],
    );
  }
}
