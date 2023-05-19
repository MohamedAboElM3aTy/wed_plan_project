import 'package:flutter/material.dart';
import 'package:wed_plan_project/utilities/routes.dart';

import '../widgets/text_icon_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                  'assets/images/wedIntro.jpg',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 240,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text(
                    'Welcome To Bridely',
                    style: TextStyle(
                      fontSize: 33,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 250,
            child: AdaptiveButton(
              text: 'Get Started',
              press: () =>
                  Navigator.of(context).pushNamed(AppRoutes.onBoardingScreen),
            ),
          ),
        ],
      ),
    );
  }
}
