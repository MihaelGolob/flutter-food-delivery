import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food_model.dart';

class Restaurant extends ChangeNotifier {
  final List<FoodModel> _menu = [
    // burgers
    FoodModel(
      category: FoodCategory.burgers,
      name: 'Cheese Burger',
      description: 'Classic cheese burger that everyone loves',
      imagePath: 'assets/images/burgers/burger1.jpg',
      price: 5.99,
      addons: [
        FoodAddonModel(name: 'Extra Cheese', price: 0.99),
        FoodAddonModel(name: 'Extra Patty', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.burgers,
      name: 'Bacon Burger',
      description: 'Bacon burger with crispy bacon',
      imagePath: 'assets/images/burgers/burger2.jpg',
      price: 6.99,
      addons: [
        FoodAddonModel(name: 'Extra Cheese', price: 0.99),
        FoodAddonModel(name: 'Extra Patty', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.burgers,
      name: 'Mushroom Burger',
      description: 'Burger with sauteed mushrooms',
      imagePath: 'assets/images/burgers/burger3.jpg',
      price: 6.99,
      addons: [
        FoodAddonModel(name: 'Extra Cheese', price: 0.99),
        FoodAddonModel(name: 'Extra Patty', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.burgers,
      name: 'Double Cheese Burger',
      description: 'Double cheese burger for double the fun',
      imagePath: 'assets/images/burgers/burger4.jpg',
      price: 7.99,
      addons: [
        FoodAddonModel(name: 'Extra Cheese', price: 0.99),
        FoodAddonModel(name: 'Extra Patty', price: 1.99),
      ],
    ),

    // salads
    FoodModel(
      category: FoodCategory.salads,
      name: 'Garden Salad',
      description: 'Fresh garden salad with vinaigrette',
      imagePath: 'assets/images/salads/salad1.jpg',
      price: 4.99,
      addons: [
        FoodAddonModel(name: 'Extra Dressing', price: 0.99),
        FoodAddonModel(name: 'Extra Chicken', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.salads,
      name: 'Caesar Salad',
      description: 'Classic caesar salad with croutons',
      imagePath: 'assets/images/salads/salad2.jpg',
      price: 5.99,
      addons: [
        FoodAddonModel(name: 'Extra Dressing', price: 0.99),
        FoodAddonModel(name: 'Extra Chicken', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.salads,
      name: 'Greek Salad',
      description: 'Greek salad with feta cheese and olives',
      imagePath: 'assets/images/salads/salad3.jpg',
      price: 5.99,
      addons: [
        FoodAddonModel(name: 'Extra Dressing', price: 0.99),
        FoodAddonModel(name: 'Extra Chicken', price: 1.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.salads,
      name: 'Cobb Salad',
      description: 'Cobb salad with avocado and bacon',
      imagePath: 'assets/images/salads/salad4.jpg',
      price: 6.99,
      addons: [
        FoodAddonModel(name: 'Extra Dressing', price: 0.99),
        FoodAddonModel(name: 'Extra Chicken', price: 1.99),
      ],
    ),

    // drinks
    FoodModel(
      category: FoodCategory.drinks,
      name: 'Coke',
      description: 'Classic coke in a can',
      imagePath: 'assets/images/drinks/drink1.jpg',
      price: 1.99,
      addons: [
        FoodAddonModel(name: 'Ice', price: 0.00),
        FoodAddonModel(name: 'Lemon', price: 0.00),
      ],
    ),
    FoodModel(
      category: FoodCategory.drinks,
      name: 'Sprite',
      description: 'Classic sprite in a can',
      imagePath: 'assets/images/drinks/drink2.jpg',
      price: 1.99,
      addons: [
        FoodAddonModel(name: 'Ice', price: 0.00),
        FoodAddonModel(name: 'Lemon', price: 0.00),
      ],
    ),
    FoodModel(
      category: FoodCategory.drinks,
      name: 'Fanta',
      description: 'Classic fanta in a can',
      imagePath: 'assets/images/drinks/drink3.jpg',
      price: 1.99,
      addons: [
        FoodAddonModel(name: 'Ice', price: 0.00),
        FoodAddonModel(name: 'Lemon', price: 0.00),
      ],
    ),
    FoodModel(
      category: FoodCategory.drinks,
      name: 'Water',
      description: 'Bottled water',
      imagePath: 'assets/images/drinks/drink4.jpg',
      price: 0.99,
      addons: [
        FoodAddonModel(name: 'Ice', price: 0.00),
        FoodAddonModel(name: 'Lemon', price: 0.00),
      ],
    ),

    // desserts
    FoodModel(
      category: FoodCategory.desserts,
      name: 'Chocolate Cake',
      description: 'Chocolate cake with chocolate frosting',
      imagePath: 'assets/images/desserts/dessert1.jpg',
      price: 3.99,
      addons: [
        FoodAddonModel(name: 'Ice Cream', price: 0.99),
        FoodAddonModel(name: 'Extra Chocolate', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.desserts,
      name: 'Cheesecake',
      description: 'Classic cheesecake with strawberry topping',
      imagePath: 'assets/images/desserts/dessert2.jpg',
      price: 4.99,
      addons: [
        FoodAddonModel(name: 'Ice Cream', price: 0.99),
        FoodAddonModel(name: 'Extra Chocolate', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.desserts,
      name: 'Apple Pie',
      description: 'Apple pie with vanilla ice cream',
      imagePath: 'assets/images/desserts/dessert3.jpg',
      price: 4.99,
      addons: [
        FoodAddonModel(name: 'Ice Cream', price: 0.99),
        FoodAddonModel(name: 'Extra Chocolate', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.desserts,
      name: 'Brownie',
      description: 'Fudgy brownie with nuts and caramel',
      imagePath: 'assets/images/desserts/dessert4.jpg',
      price: 3.99,
      addons: [
        FoodAddonModel(name: 'Ice Cream', price: 0.99),
        FoodAddonModel(name: 'Extra Chocolate', price: 0.99),
      ],
    ),

    // sides
    FoodModel(
      category: FoodCategory.sides,
      name: 'Fries',
      description: 'Classic fries with ketchup',
      imagePath: 'assets/images/sides/side1.jpg',
      price: 2.99,
      addons: [
        FoodAddonModel(name: 'Cheese', price: 0.99),
        FoodAddonModel(name: 'Bacon', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.sides,
      name: 'Onion Rings',
      description: 'Crispy onion rings with ranch',
      imagePath: 'assets/images/sides/side2.jpg',
      price: 3.99,
      addons: [
        FoodAddonModel(name: 'Cheese', price: 0.99),
        FoodAddonModel(name: 'Bacon', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.sides,
      name: 'Mozzarella Sticks',
      description: 'Mozzarella sticks with marinara sauce',
      imagePath: 'assets/images/sides/side3.jpg',
      price: 4.99,
      addons: [
        FoodAddonModel(name: 'Cheese', price: 0.99),
        FoodAddonModel(name: 'Bacon', price: 0.99),
      ],
    ),
    FoodModel(
      category: FoodCategory.sides,
      name: 'Garlic Bread',
      description: 'Garlic bread with cheese and herbs',
      imagePath: 'assets/images/sides/side4.jpg',
      price: 3.99,
      addons: [
        FoodAddonModel(name: 'Cheese', price: 0.99),
        FoodAddonModel(name: 'Bacon', price: 0.99),
      ],
    ),
  ];

  final List<CartItem> _cart = [];

  List<FoodModel> get menu => _menu;

  List<FoodModel> getMenuByCategory(FoodCategory category) {
    return _menu.where((food) => food.category == category).toList();
  }

  void addToCart(FoodModel food, List<FoodAddonModel> selectedAddons, int quantity) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool hasSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && hasSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity += quantity;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons, quantity: quantity));
    }

    notifyListeners();
  }
}
