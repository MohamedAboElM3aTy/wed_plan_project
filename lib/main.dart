import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wed_plan_project/utilities/theme_light.dart';
import 'package:wed_plan_project/utilities/router.dart';
import 'package:wed_plan_project/utilities/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WedPlan',
      theme: buildTheme(),
      initialRoute: AppRoutes.welcomeScreen,
      onGenerateRoute: generateRoute,
    );
  }
}

// import 'package:wed_plan_project/utilities/dark_theme.dart';
// theme: buildDarkTheme(),