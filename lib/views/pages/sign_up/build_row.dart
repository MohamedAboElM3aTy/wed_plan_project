import 'package:flutter/material.dart';

import 'package:wed_plan_project/views/pages/sign_up/social_icon.dart';

class buildRow extends StatelessWidget {
  const buildRow({
    super.key,
  });

  void _showDialog(String title, String message, BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          iconSource: 'assets/icons/facebook.svg',
          press: () => _showDialog(
            'Sorry',
            'We Are working on It soon :) ',
            context,
          ),
        ),
        SocialIcon(
          iconSource: 'assets/icons/google-plus.svg',
          press: () => _showDialog(
            'Sorry',
            'We Are working on It soon :) ',
            context,
          ),
        ),
        SocialIcon(
          iconSource: 'assets/icons/twitter.svg',
          press: () => _showDialog(
            'Sorry',
            'We Are working on It soon :) ',
            context,
          ),
        ),
      ],
    );
  }
}
