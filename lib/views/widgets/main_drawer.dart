import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/utilities/routes.dart';

class MainDrawer extends StatelessWidget {
  final Auth auth = Auth();
  MainDrawer({
    super.key,
    // required this.onSelectScreen,
  });

  // final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  kColorScheme.primary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 48,
                  color: kColorScheme.secondary,
                ),
                const SizedBox(width: 20),
                Text(
                  'Menu',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                        fontSize: 24,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.view_agenda_rounded,
              size: 26,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Vendors',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 24,
                  ),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 10.0),
          ListTile(
            leading: Icon(
              Icons.shop,
              size: 26,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              'Cart',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontSize: 24,
                  ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 26,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Log Out',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 24,
                  ),
            ),
            onTap: () async {
              await auth.logout();
              Navigator.of(context).pushReplacementNamed(AppRoutes.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
