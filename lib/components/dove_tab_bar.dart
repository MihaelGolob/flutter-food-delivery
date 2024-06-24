import 'package:flutter/material.dart';

class DoveTabBar extends StatelessWidget {
  final TabController tabController;

  const DoveTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      controller: tabController,
      tabs: const [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.settings)),
        Tab(icon: Icon(Icons.person)),
      ],
    );
  }
}
