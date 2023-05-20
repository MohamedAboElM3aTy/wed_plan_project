import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/features/cart/data/adapaters/order_model.dart';
import 'package:wed_plan_project/features/cart/presentation/cubit/cart_bloc.dart';
import 'package:wed_plan_project/features/favourites/data/adapaters/vendor_model.dart';
import 'package:wed_plan_project/features/favourites/presentation/cubit/favourite_bloc.dart';
import 'package:wed_plan_project/utilities/theme_light.dart';
import 'package:wed_plan_project/utilities/router.dart';
import 'package:wed_plan_project/utilities/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemAdapter());
  Hive.registerAdapter(VendorAdapter());
  runApp(
    MyApp(),
  );
}

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
      ),
    );
  }
}