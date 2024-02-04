import 'package:flutter/material.dart';
import 'package:wed_plan_project/generated/l10n.dart';

import 'package:wed_plan_project/utilities/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback? press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locale = S.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t have an account ?' : 'Already have an account ? ',
          style: TextStyle(color: kColorScheme.primary),
        ),
        InkWell(
          onTap: press,
          child: Text(
            login ? locale.signUp : locale.login,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
