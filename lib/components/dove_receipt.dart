import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class DoveReceipt extends StatelessWidget {
  const DoveReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Align(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('Thank you for your order!'),
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: theme.secondary),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Consumer<Restaurant>(
              builder: (context, restaurant, child) => Text(restaurant.generateCartReceipt()),
            ),
          ),
          const SizedBox(height: 25),
          const Text('Estimated delivery time: 30 minutes'),
        ],
      ),
    );
  }
}
