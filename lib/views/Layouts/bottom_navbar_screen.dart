import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/pages/Home/Categories_screen.dart';
import 'package:wed_plan_project/features/favourites/presentation/pages/favorites_page.dart';
import 'package:wed_plan_project/features/cart/presentation/pages/cart_page.dart';
import 'package:wed_plan_project/data/dummy_data.dart';
import 'package:wed_plan_project/views/Layouts/main_drawer.dart';
import 'package:wed_plan_project/views/pages/checkout/checkout.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  late final _bottomNavbarController;

  List<Widget> _buildScreens() {
    return [
      CategoriesScreen(availableVendors: availableVendors),
      FavoritesPage(),
      CartPage(),
      CheckoutPage(),
    ];
  }

  @override
  void initState() {
    super.initState();
    _bottomNavbarController = PersistentTabController();
    _bottomNavbarController.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    _bottomNavbarController.dispose();
    super.dispose();
  }

  String _title() {
    switch (_bottomNavbarController.index) {
      case 0:
        return 'Categories';
      case 1:
        return 'Favorites';
      case 2:
        return 'Cart';
      case 3:
        return 'Checkout';
      default:
        return 'Categories';
    }
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ('Home'),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.star),
        title: ('Favorites'),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: ('Cart'),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_checkout),
        title: ('Checkout'),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[400],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          _title(),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: kColorScheme.secondary,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.searchPage),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: MainDrawer(controller: _bottomNavbarController),
      body: PersistentTabView(
        context,
        controller: _bottomNavbarController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true,
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style3, // Choose the nav bar style with this property.
      ),
    );
  }
}
