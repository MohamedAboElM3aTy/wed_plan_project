import 'package:flutter/material.dart';

import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/views/pages/Home/vendors_screen.dart';

import 'package:wed_plan_project/views/pages/Home/Categories_screen.dart';
import 'package:wed_plan_project/views/pages/bottom_navbar_screen.dart';
import 'package:wed_plan_project/views/pages/cart/cart.dart';
import 'package:wed_plan_project/views/pages/onboarding/onboard_screen.dart';
import 'package:wed_plan_project/views/pages/signIn/login_screen.dart';
import 'package:wed_plan_project/views/pages/signUp/signUp_screen.dart';
import 'package:wed_plan_project/views/pages/welcome_screen.dart';
import './routes.dart';
import 'package:wed_plan_project/data/dummy_data.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.welcomeScreen:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
        settings: settings,
      );
    case AppRoutes.loginPage:
      return MaterialPageRoute(
        builder: (_) => LoginScreen(),
        settings: settings,
      );
    case AppRoutes.categoriesScreen:
      return MaterialPageRoute(
        builder: (_) => CategoriesScreen(
          availableVendors: availableVendors,
        ),
        settings: settings,
      );
    case AppRoutes.signUpScreen:
      return MaterialPageRoute(
        builder: (_) => SignUp(),
        settings: settings,
      );
    case AppRoutes.onBoardingScreen:
      return MaterialPageRoute(
        builder: (_) => OnBoardingScreen(),
        settings: settings,
      );
      //! This is the route for the vendors screen but doesn't work 
      //? because i want to pass the data from the categories screen to the vendors screen
    // case AppRoutes.vendorsScreen:
    //   return MaterialPageRoute(
    //     builder: (_) => VendorsScreen(),
    //   );
    case AppRoutes.cartScreen:
      return MaterialPageRoute(
        builder: (_) => CartScreen(),
        settings: settings,
      );
    case AppRoutes.bottomNavBar:
      return MaterialPageRoute(
        builder: (_) => BottomNavbar(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
        settings: settings,
      );
  }
}
