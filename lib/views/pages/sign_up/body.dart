import 'package:flutter/material.dart';

import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/pages/sign_up/background.dart';
import 'package:wed_plan_project/views/pages/sign_up/or_divider.dart';
import 'package:wed_plan_project/views/widgets/have_account.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';
import 'package:wed_plan_project/views/widgets/rounded_inputField.dart';
import 'package:wed_plan_project/views/widgets/rounded_passwordField.dart';
import 'package:wed_plan_project/views/pages/sign_up/build_row.dart';

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
  bool loading = false;

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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Password must be at least 8 characters ,1 uppercase, 1 lowercase and one number'),
                      ),
                    );
                    return 'Enter a valid Password!';
                  }
                  return null;
                },
              ),
              loading
                  ? CircularProgressIndicator.adaptive()
                  : RoundedButton(
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                      text: 'SIGN UP',
                      press: () async {
                        setState(() => loading = true);
                        if (_formKey.currentState!.validate()) {
                          await authBase.registerWithEmailAndPassword(
                            _email,
                            _passWord,
                          );
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.bottomNavBar);
                        }
                        setState(() => loading = false);
                      },
                    ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () =>
                    Navigator.of(context).pushNamed(AppRoutes.loginPage),
              ),
              OrDivider(),
              buildRow(),
            ],
          ),
        ),
      ),
    );
  }
}
