import 'package:flutter/material.dart';

import '../widgets/text_icon_button.dart';

class WelcomeScreen extends StatelessWidget {
  void nextPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/wedIntro.jpg',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 240,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome To wedPlan',
                    style: TextStyle(
                      fontSize: 33,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 220,
            child: AdaptiveButton(
              press: () => nextPage(context),
              text: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}
