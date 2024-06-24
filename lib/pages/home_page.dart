import 'package:flutter/material.dart';
import 'package:food_delivery/components/dove_current_location.dart';
import 'package:food_delivery/components/dove_description_box.dart';
import 'package:food_delivery/components/dove_sliver_app_bar.dart';
import 'package:food_delivery/components/drawer/dove_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
        drawer: const DoveDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScroller) => [
            DoveSliverAppBar(
              title: const Text('title'),
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
          body: Container(color: Colors.blue),
        ));
  }
}
