import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:wed_plan_project/features/cart/data/adapters/order_model.dart';
import 'package:wed_plan_project/features/cart/presentation/cubit/cart_bloc.dart';
import 'package:wed_plan_project/features/favourites/data/adapters/vendor_model.dart';
import 'package:wed_plan_project/utilities/router.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/utilities/theme_light.dart';
import 'package:wed_plan_project/generated/l10n.dart';
import 'features/favourites/presentation/cubit/favourite_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavouriteBloc()..add(FavouriteLoadEvent()),
        ),
        BlocProvider(
          create: (context) => CartBloc()..add(CartLoadEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WedPlan',
        theme: buildTheme(),
        initialRoute: AppRoutes.welcomeScreen,
        onGenerateRoute: generateRoute,
        locale: Locale('en'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}

Future<void> initializeApp() async {
  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemAdapter());
  Hive.registerAdapter(VendorAdapter());
}
