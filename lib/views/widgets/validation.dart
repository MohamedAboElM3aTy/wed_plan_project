import 'package:flutter/material.dart';

import 'package:wed_plan_project/views/widgets/rounded_inputField.dart';
import 'package:wed_plan_project/views/widgets/rounded_passwordField.dart';

class EmailAndPasswordVerify extends StatefulWidget {

  EmailAndPasswordVerify({
    super.key,
  });

  @override
  State<EmailAndPasswordVerify> createState() => _EmailAndPasswordVerifyState();
}

class _EmailAndPasswordVerifyState extends State<EmailAndPasswordVerify> {
  var _email = '', _passWord = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedInputField(
          changed: (value) => _email = value,
          validator: (value) {
            final emailRegex =
                RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
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
      ],
    );
  }
}
