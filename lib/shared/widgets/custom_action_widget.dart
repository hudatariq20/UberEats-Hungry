import 'package:flutter/material.dart';

class CustomActionChip extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;
  const CustomActionChip(
      {super.key, required this.labelText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ActionChip(
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)
        ),
        color: MaterialStateColor.resolveWith((states) => colorScheme.surfaceVariant),
        avatar: Icon(Icons.expand_more, color: colorScheme.onBackground,),
        onPressed: onPressed,
        label: Text(labelText, style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),) ),
    );
  }
}
