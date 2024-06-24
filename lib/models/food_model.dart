class FoodModel {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<FoodAddonModel> addons = [];

  FoodModel(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      List<FoodAddonModel>? addons}) {
    if (addons != null) {
      this.addons = addons;
    }
  }
}

enum FoodCategory { burgers, salads, sides, desserts, drinks }

class FoodAddonModel {
  final String name;
  final double price;

  FoodAddonModel({required this.name, required this.price});
}
