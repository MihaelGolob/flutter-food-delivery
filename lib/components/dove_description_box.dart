import 'package:flutter/material.dart';

class DoveDescriptionBox extends StatelessWidget {
  const DoveDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    var primaryTextStyle = TextStyle(
      color: theme.inversePrimary,
      fontWeight: FontWeight.bold,
    );
    var secondaryTextStyle = TextStyle(
      color: theme.primary,
    );

    return Container(
        decoration: BoxDecoration(border: Border.all(color: theme.secondary), borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('\$0.99', style: primaryTextStyle),
                Text('Delivery fee', style: secondaryTextStyle),
              ],
            ),
            Column(
              children: [
                Text('15-20 min', style: primaryTextStyle),
                Text('Delivery time', style: secondaryTextStyle),
              ],
            )
          ],
        ));
  }
}
