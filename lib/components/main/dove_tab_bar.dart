import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class DoveTabBar extends StatelessWidget {
  final TabController tabController;

  const DoveTabBar({super.key, required this.tabController});

  List<Tab> buildCategoryTabs() {
    return FoodCategory.values.map((category) => Tab(text: category.toString().split('.').last)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      controller: tabController,
      tabs: buildCategoryTabs(),
    );
  }
}
