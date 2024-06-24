import 'package:food_delivery/models/food_model.dart';

class Restaurant {
  final List<FoodModel> _menu = [
    // burgers
    FoodModel(
      category: FoodCategory.burgers,
      name: 'Cheese Burger',
      description: 'Classic cheese burger that everyone loves',
      imagePath: 'assets/images/burger1.jpg',
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
      imagePath: 'assets/images/burger2.jpg',
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
      imagePath: 'assets/images/burger3.jpg',
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
      imagePath: 'assets/images/burger4.jpg',
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
      imagePath: 'assets/images/salad1.jpg',
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
      imagePath: 'assets/images/salad2.jpg',
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
      imagePath: 'assets/images/salad3.jpg',
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
      imagePath: 'assets/images/salad4.jpg',
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
      imagePath: 'assets/images/drink1.jpg',
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
      imagePath: 'assets/images/drink2.jpg',
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
      imagePath: 'assets/images/drink3.jpg',
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
      imagePath: 'assets/images/drink4.jpg',
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
      imagePath: 'assets/images/dessert1.jpg',
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
      imagePath: 'assets/images/dessert2.jpg',
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
      imagePath: 'assets/images/dessert3.jpg',
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
      imagePath: 'assets/images/dessert4.jpg',
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
      imagePath: 'assets/images/side1.jpg',
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
      imagePath: 'assets/images/side2.jpg',
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
      imagePath: 'assets/images/side3.jpg',
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
      imagePath: 'assets/images/side4.jpg',
      price: 3.99,
      addons: [
        FoodAddonModel(name: 'Cheese', price: 0.99),
        FoodAddonModel(name: 'Bacon', price: 0.99),
      ],
    ),
  ];

  List<FoodModel> get menu => _menu;
}
