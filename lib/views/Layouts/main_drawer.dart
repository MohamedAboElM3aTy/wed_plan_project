import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import '../widgets/drawer_list_tile.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    super.key,
    required this.controller,
  });

  final PersistentTabController controller;

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final Auth auth = Auth();
  ThemeMode currentThemeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kColorScheme.primary,
                  Colors.purpleAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.menu_open_outlined,
                    size: 48,
                    color: kColorScheme.secondary,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              children: [
                BuildListTile(
                  icon: Icons.dark_mode,
                  titleText: 'Dark Mode',
                  onTap: () {
                    setState(
                      () {
                        currentThemeMode = currentThemeMode == ThemeMode.system
                            ? ThemeMode.dark
                            : ThemeMode.system;
                      },
                    );
                  },
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.person_3,
                  titleText: 'Vendors',
                  onTap: () {
                    Navigator.pop(context);
                    widget.controller.jumpToTab(0);
                  },
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.favorite_outline,
                  titleText: 'Favorites',
                  onTap: () {
                    Navigator.pop(context);
                    widget.controller.jumpToTab(1);
                  },
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.shopping_cart,
                  titleText: 'Cart',
                  onTap: () {
                    Navigator.pop(context);
                    widget.controller.jumpToTab(2);
                  },
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.shopping_bag_outlined,
                  titleText: 'Check-out',
                  onTap: () {
                    Navigator.pop(context);
                    widget.controller.jumpToTab(3);
                  },
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.logout,
                  titleText: 'Log Out',
                  onTap: () async {
                    await auth.logout();
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.loginPage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
