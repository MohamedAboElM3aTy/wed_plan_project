import 'package:flutter/material.dart';
import 'package:wed_plan_project/core/extensions/context.dart';
import 'package:wed_plan_project/core/extensions/double.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';

import './background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            10.toHeight, // ? 0.05
            FittedBox(
              child: Text(
                'Welcome to our app \n'
                'The main goal is to serve\n'
                'bridesmaid in their wedding\n'
                'We will be with you\n'
                'step by step :)',
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
                maxLines: 5,
                softWrap: true,
              ),
            ),
            10.toHeight, // ? 0.03
            Image.asset(
              'assets/images/wedOrg.jpeg',
              width: context.screenWidth * 1,
              height: context.screenHeight * 0.45,
            ),
            10.toHeight, // ? 0.05
            RoundedButton(
              color: Theme.of(context).primaryColor,
              text: context.locale.login,
              onPress: () => context.navigator.pushNamed(AppRoutes.loginPage),
            ),
            RoundedButton(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              text: context.locale.signUp,
              // onPress: () =>
              onPress: () =>
                  context.navigator.pushNamed(AppRoutes.signUpScreen),
            ),
          ],
        ),
      ),
    );
  }
}
