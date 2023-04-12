import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/constants.dart';
import './text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final Function(String) onTap;

  const RoundedPasswordField({
    required this.onTap,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onTap,
        validator: validator,
        textInputAction: TextInputAction.done,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
