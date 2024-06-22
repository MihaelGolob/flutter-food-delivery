import 'package:flutter/material.dart';

class DoveDrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const DoveDrawerTile({super.key, required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: theme.inversePrimary),
      ),
      leading: Icon(
        icon,
        color: theme.inversePrimary,
      ),
      onTap: onTap,
    );
  }
}
