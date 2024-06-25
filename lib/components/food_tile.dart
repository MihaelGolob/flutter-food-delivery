import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class FoodTile extends StatelessWidget {
  final FoodModel food;
  final void Function()? onTap;

  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text('\$${food.price.toString()}', style: TextStyle(fontWeight: FontWeight.bold, color: theme.primary)),
                      const SizedBox(height: 10),
                      Text(food.description, style: TextStyle(color: theme.inversePrimary)),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: theme.secondary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
