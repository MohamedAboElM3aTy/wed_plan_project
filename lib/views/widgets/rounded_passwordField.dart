import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/constants.dart';
import './text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final Function changed;

  const RoundedPasswordField({
    this.changed,
    @required this.validator,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: changed,
        validator: validator,
        textInputAction: TextInputAction.done,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
