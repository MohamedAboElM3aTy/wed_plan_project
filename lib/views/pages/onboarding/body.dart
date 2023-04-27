import 'package:flutter/material.dart';
import 'package:wed_plan_project/utilities/routes.dart';

import 'package:wed_plan_project/views/widgets/rounded_button.dart';
import './background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            FittedBox(
              child: Text(
                'Welcome to our app \n'
                'The main goal is to serve bridesmaid in their wedding\n'
                'We will be with you\n'
                'step by step :)',
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
                softWrap: true,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/images/wedOrg.jpeg',
              width: size.width * 1,
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              color: Theme.of(context).primaryColor,
              text: 'LOGIN',
              press: () => Navigator.of(context).pushNamed(AppRoutes.loginPage),
            ),
            RoundedButton(
              color: Theme.of(context).colorScheme.background,
              text: 'SIGN UP',
              press: () => Navigator.of(context).pushNamed(AppRoutes.signUpScreen),
            ),
          ],
        ),
      ),
    );
  }
}
