import 'package:flutter/material.dart';

import 'package:wed_plan_project/views/pages/intro_screen.dart';
import 'package:wed_plan_project/views/pages/signIn/login_screen.dart';
import 'package:wed_plan_project/views/pages/signUp/background.dart';
import 'package:wed_plan_project/views/pages/signUp/or_divider.dart';
import 'package:wed_plan_project/views/pages/signUp/social_icon.dart';
import 'package:wed_plan_project/views/widgets/have_account.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';
import 'package:wed_plan_project/views/widgets/rounded_inputField.dart';
import 'package:wed_plan_project/views/widgets/rounded_passwordField.dart';
import 'package:wed_plan_project/services/auth.dart';

class Body extends StatefulWidget {
  final Widget child;
  Body(this.child);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  var _email = '', _passWord = '';
  AuthBase authBase = Auth();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                'assets/images/wed4.jpg',
                height: size.height * 0.35,
              ),
              RoundedInputField(
                changed: (value) => _email = value,
                validator: (value) =>
                    value!.isEmpty ? 'Enter a valid mail' : null,
                hintText: 'Your Email',
              ),
              RoundedPasswordField(
                onTap: (value) => _passWord = value,
                validator: (value) => value!.isEmpty || value.length < 8
                    ? 'Password Must Contain 8 Letters '
                    : null,
              ),
              RoundedButton(
                text: 'SIGN UP',
                press: () async {
                  if (_formKey.currentState!.validate()) {
                    await authBase.registerWithEmailAndPassword(
                        _email, _passWord);
                    Navigator.of(context)
                        .pushReplacementNamed(IntroScreen.routeName);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    iconSource: 'assets/icons/facebook.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    iconSource: 'assets/icons/google-plus.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    iconSource: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
