import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/theme.dart';
import 'package:wed_plan_project/views/pages/intro_screen.dart';
import 'package:wed_plan_project/views/pages/onboarding/onboard_screen.dart';
import 'package:wed_plan_project/views/pages/welcome_screen.dart';

// ! My app idea is that it will help bridesmaid to organize their wedding through collecting all the information they need in one place.
// ! They take a lot of time searching on the internet so i decided to collect all their needs in one single platform.

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WedPlan',
      theme: buildTheme(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomeScreen(),
        LoginPage.routeName: (ctx) => LoginPage(),
        FirstScreen.routeName: (ctx) => FirstScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => WelcomeScreen(),
        );
      },
    );
  }
}
