import 'package:flutter/material.dart';
import 'package:food_delivery/components/dove_current_location.dart';
import 'package:food_delivery/components/dove_description_box.dart';
import 'package:food_delivery/components/dove_sliver_app_bar.dart';
import 'package:food_delivery/components/dove_tab_bar.dart';
import 'package:food_delivery/components/drawer/dove_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
        drawer: const DoveDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScroller) => [
            DoveSliverAppBar(
              title: DoveTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(indent: 25, endIndent: 25, color: theme.secondary),
                  DoveCurrentLocation(),
                  DoveDescriptionBox(),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              Text('Hello 1'),
              Text('Hello 2'),
              Text('Hello 3'),
            ],
          ),
        ));
  }
}
