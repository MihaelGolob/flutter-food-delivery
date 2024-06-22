import 'package:flutter/material.dart';
import 'package:food_delivery/components/drawer/dove_drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';

class DoveDrawer extends StatelessWidget {
  const DoveDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Drawer(
      backgroundColor: theme.surface,
      child: SafeArea(
        child: Column(
          children: [
            // app logo
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Icon(
                Icons.lock_open_rounded,
                color: theme.inversePrimary,
                size: 80,
              ),
            ),
            // divider
            Padding(
              padding: const EdgeInsets.all(25),
              child: Divider(
                color: theme.secondary,
                thickness: 2,
              ),
            ),
            // home list tile
            DoveDrawerTile(
              text: 'H O M E',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            // settings list tile
            DoveDrawerTile(
              text: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
              },
            ),
            const Spacer(),
            // logout list tile
            DoveDrawerTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: () {},
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
