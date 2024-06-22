import 'package:flutter/material.dart';

class DoveButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const DoveButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: theme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.inversePrimary,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
