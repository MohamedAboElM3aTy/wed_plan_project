// required this.onSelectScreen,
// final void Function(String identifier) onSelectScreen;
import 'package:flutter/material.dart';
import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import './drawer_list_tile.dart';

class MainDrawer extends StatelessWidget {
  final Auth auth = Auth();

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
                  icon: Icons.person_3,
                  titleText: 'Vendors',
                  onTap: () {},
                ),
                Divider(),
                BuildListTile(
                  icon: Icons.shop_2_outlined,
                  titleText: 'Cart',
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.cartScreen),
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
