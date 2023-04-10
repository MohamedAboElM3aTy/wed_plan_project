import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t have an account ?' : 'Already have an account ? ',
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press, 
          child: Text(
            login ? ' Sign Up' : ' Sign In',
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}