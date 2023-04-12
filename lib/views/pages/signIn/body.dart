import 'package:flutter/material.dart';

import 'package:wed_plan_project/services/auth.dart';
import 'package:wed_plan_project/views/pages/intro_screen.dart';
import 'package:wed_plan_project/views/pages/signUp/signUp_screen.dart';
import 'package:wed_plan_project/views/widgets/have_account.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';
import 'package:wed_plan_project/views/widgets/rounded_inputField.dart';
import 'package:wed_plan_project/views/widgets/rounded_passwordField.dart';
import './background.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

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
              Text(
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
                validator: (value) =>
                    value.isEmpty ? 'Enter a valid mail' : null,
                hintText: 'Your Email',
              ),
              RoundedPasswordField(
                changed: (value) => _passWord = value,
                validator: (value) =>
                    value.isEmpty ? 'Password Must Contain 8 Letters ' : null,
              ),
              RoundedButton(
                text: 'LOGIN',
                press: () async {
                  if (_formKey.currentState.validate()) {
                    await authBase.loginWithEmailAndPassword(_email, _passWord);
                    Navigator.of(context)
                        .pushReplacementNamed(IntroScreen.routeName);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUp();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
