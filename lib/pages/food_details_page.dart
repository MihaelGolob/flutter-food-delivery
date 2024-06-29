import 'package:flutter/material.dart';
import 'package:food_delivery/components/general/dove_button.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodDetailsPage extends StatefulWidget {
  final FoodModel food;
  final Map<FoodAddonModel, bool> selectedAddons = {};

  FoodDetailsPage({super.key, required this.food}) {
    for (var addon in food.addons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  void addToCart(FoodModel food, Map<FoodAddonModel, bool> selectedAddons) {
    List<FoodAddonModel> addons = [];
    for (var addon in selectedAddons.entries) {
      if (addon.value) {
        addons.add(addon.key);
      }
    }

    context.read<Restaurant>().addFoodToCart(food, addons, 1);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food data
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.food.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('\$${widget.food.price.toString()}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: theme.primary)),
                      const SizedBox(height: 10),
                      Text(widget.food.description, style: TextStyle(fontSize: 16, color: theme.primary)),
                      const SizedBox(height: 20),
                      Divider(color: theme.secondary, thickness: 2),

                      Text('Add-ons', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.inversePrimary)),
                      // addons
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.addons.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          var addon = widget.food.addons[index];
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text('\$${addon.price.toString()}'),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),

                // add to cart button
                DoveButton(text: 'Add to cart', onTap: () => addToCart(widget.food, widget.selectedAddons)),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(icon: const Icon(Icons.arrow_back_ios_rounded), onPressed: () => Navigator.pop(context)),
            ),
          ),
        ),
      ],
    );
  }
}
