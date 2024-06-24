import 'package:flutter/material.dart';

class DoveCurrentLocation extends StatelessWidget {
  const DoveCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: const Text('Your location'),
          content: const TextField(
            decoration: InputDecoration(hintText: 'Search address..'),
          ),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Save'),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Deliver now', style: TextStyle(color: theme.primary)),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(children: [
              Text("152 Hollywood", style: TextStyle(color: theme.inversePrimary, fontWeight: FontWeight.bold)),
              Icon(Icons.keyboard_arrow_down),
            ]),
          ),
        ],
      ),
    );
  }
}
