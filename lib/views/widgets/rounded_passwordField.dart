import 'package:flutter/material.dart';
import 'package:wed_plan_project/utilities/constants.dart';
import './text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final FormFieldValidator<String> validator;
  final Function(String) onTap;

  const RoundedPasswordField({
    required this.onTap,
    required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: widget.onTap,
        validator: widget.validator,
        textInputAction: TextInputAction.done,
        obscureText: _isObscure,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kColorScheme.primary,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
              color: kColorScheme.primary,
            ),
            onPressed: _toggleObscure,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
