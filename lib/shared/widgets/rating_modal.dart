// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_eats/shared/widgets/slider_with_division_value.dart';

class RatingModal extends StatelessWidget {
  const RatingModal({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Rating',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
          Divider(
            color: colorScheme.background,
            height: 32,
          ),
          SliderWithDivisionValue(),
          const SizedBox(height: 16,),
          FilledButton(onPressed: (){}, child: Text('Apply'), style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),),
          SizedBox(height: 10,),
          TextButton(onPressed: (){}, child: Text('Restart'), style: TextButton.styleFrom(minimumSize: const Size.fromHeight(48)),)

        ],
      ),
    ));
  }
}
