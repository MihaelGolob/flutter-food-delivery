import 'package:food_delivery/models/food_model.dart';

class CartItem {
  FoodModel food;
  List<FoodAddonModel> selectedAddons;
  int quantity;

  CartItem({required this.food, required this.selectedAddons, this.quantity = 1});

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
