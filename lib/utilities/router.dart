import 'package:flutter/material.dart';

import 'package:wed_plan_project/views/pages/Home/Categories_screen.dart';
import 'package:wed_plan_project/views/pages/Home/vendors_screen.dart';
import 'package:wed_plan_project/views/pages/onboarding/onboard_screen.dart';
import 'package:wed_plan_project/views/pages/signIn/login_screen.dart';
import 'package:wed_plan_project/views/pages/signUp/signUp_screen.dart';
import 'package:wed_plan_project/views/pages/welcome_screen.dart';
import './routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.welcomeScreen:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
      );
    case AppRoutes.loginPage:
      return MaterialPageRoute(
        builder: (_) => LoginScreen(),
      );
    case AppRoutes.categoriesScreen:
      return MaterialPageRoute(
        builder: (_) => CategoriesScreen(),
      );
    case AppRoutes.signUpScreen:
      return MaterialPageRoute(
        builder: (_) => SignUp(),
      );
    case AppRoutes.onBoardingScreen:
      return MaterialPageRoute(
        builder: (_) => OnBoardingScreen(),
      );
    case AppRoutes.vendorsScreen:
      return MaterialPageRoute(
        builder: (_) => VendorsScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
      );
  }
}
