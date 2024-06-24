import 'package:flutter/material.dart';

class DoveSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const DoveSliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return SliverAppBar(
      title: title,
      backgroundColor: theme.surface,
      foregroundColor: theme.inversePrimary,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1.0,
      ),
    );
  }
}
