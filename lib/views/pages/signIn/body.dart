import 'package:flutter/material.dart';

import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/views/widgets/have_account.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';
import 'package:wed_plan_project/views/widgets/rounded_inputField.dart';
import 'package:wed_plan_project/views/widgets/rounded_passwordField.dart';
import './background.dart';

import 'package:wed_plan_project/utilities/routes.dart';

class Body extends StatefulWidget {
  const Body({super.key});

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
      child: BackGround(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                'assets/images/290027.png',
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                changed: (value) => _email = value,
                validator: (value) {
                  final emailRegex = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                  if (value!.isEmpty || !emailRegex.hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
                hintText: 'Your Email',
              ),
              RoundedPasswordField(
                onTap: (value) => _passWord = value,
                validator: (value) {
                  final passwordRegex =
                      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                  if (value!.isEmpty ||
                      value.length < 8 ||
                      !passwordRegex.hasMatch(value)) {
                    return 'Not a valid password';
                  }
                  return null;
                },
              ),
              RoundedButton(
                color: Theme.of(context).primaryColor,
                text: 'LOGIN',
                press: () async {
                  if (_formKey.currentState!.validate()) {
                    final isEmailExists =
                        await authBase.checkEmailExists(_email);
                    if (!isEmailExists) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'This email is not registered with us. Please sign up first.'),
                        ),
                      );
                    } else {
                      try {
                        await authBase.loginWithEmailAndPassword(
                          _email,
                          _passWord,
                        );
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.bottomNavBar);
                      } catch (error) {
                        print(error);
                      }
                    }
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () =>
                    Navigator.of(context).pushNamed(AppRoutes.signUpScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
