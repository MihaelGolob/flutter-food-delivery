import 'package:flutter/material.dart';
import 'package:food_delivery/components/drawer/dove_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: theme.tertiary,
      ),
      backgroundColor: theme.surface,
      drawer: DoveDrawer(),
    );
  }
}
