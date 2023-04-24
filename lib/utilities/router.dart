import 'package:flutter/material.dart';
import 'package:wed_plan_project/views/pages/Home/home_screen.dart';

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
    case AppRoutes.homeScreen:
      return MaterialPageRoute(
        builder: (_) => HomeScreen(),
      );
    case AppRoutes.signUpScreen:
      return MaterialPageRoute(
        builder: (_) => SignUp(),
      );
      case AppRoutes.onBoardingScreen:
      return MaterialPageRoute(
        builder: (_) => OnBoardingScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
      );
  }
}
