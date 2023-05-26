import 'package:flutter/material.dart';
import './routes.dart';

import 'package:wed_plan_project/models/cart.dart';
import 'package:wed_plan_project/views/Layouts/search_page.dart';
import 'package:wed_plan_project/views/pages/vendor/Screens/vendor_details.dart';
import 'package:wed_plan_project/views/pages/Home/vendors_screen.dart';
import 'package:wed_plan_project/views/pages/Home/Categories_screen.dart';
import 'package:wed_plan_project/views/Layouts/bottom_navbar_screen.dart';
import 'package:wed_plan_project/features/cart/presentation/pages/cart_page.dart';
import 'package:wed_plan_project/views/pages/onboarding/onboard_screen.dart';
import 'package:wed_plan_project/views/pages/sign_in/login_screen.dart';
import 'package:wed_plan_project/views/pages/sign_up/signUp_screen.dart';
import 'package:wed_plan_project/views/pages/welcome_screen.dart';
import 'package:wed_plan_project/data/dummy_data.dart';
import 'package:wed_plan_project/views/pages/checkout/checkout.dart';
import 'package:wed_plan_project/features/favourites/presentation/pages/favorites_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.welcomeScreen:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
        settings: settings,
      );
    case AppRoutes.onBoardingScreen:
      return MaterialPageRoute(
        builder: (_) => OnBoardingScreen(),
        settings: settings,
      );
    case AppRoutes.signUpScreen:
      return MaterialPageRoute(
        builder: (_) => SignUp(),
        settings: settings,
      );
    case AppRoutes.loginPage:
      return MaterialPageRoute(
        builder: (_) => LoginScreen(),
        settings: settings,
      );
    case AppRoutes.bottomNavBar:
      return MaterialPageRoute(
        builder: (_) => BottomNavbar(),
        settings: settings,
      );
    case AppRoutes.categoriesScreen:
      return MaterialPageRoute(
        builder: (_) => CategoriesScreen(
          availableVendors: availableVendors,
        ),
        settings: settings,
      );
    case AppRoutes.vendorsScreen:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => VendorsScreen(
          vendors: args['vendors'],
          title: args['title'],
        ),
      );
    case AppRoutes.vendorDetails:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => VendorsDetails(
          vendor: args['vendor'],
        ),
        settings: settings,
      );
    case AppRoutes.searchPage:
      return MaterialPageRoute(
        builder: (_) => SearchPage(),
        settings: settings,
      );
    case AppRoutes.favoritesPage:
      return MaterialPageRoute(
        builder: (_) => FavoritesPage(),
        settings: settings,
      );
    case AppRoutes.cartScreen:
      return MaterialPageRoute(
        builder: (_) => CartPage(),
        settings: settings,
      );
    case AppRoutes.checkoutPage:
      final args = settings.arguments as List<CartItem>;
      return MaterialPageRoute(
        builder: (_) => CheckoutPage(
          cartItems: args,
        ),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
        settings: settings,
      );
  }
}