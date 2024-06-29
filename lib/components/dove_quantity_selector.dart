import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class DoveQuantitySelector extends StatelessWidget {
  final int quantity;
  final FoodModel food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const DoveQuantitySelector({super.key, required this.quantity, required this.food, required this.onIncrement, required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: theme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 20,
              child: Center(child: Text(quantity.toString())),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: theme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
