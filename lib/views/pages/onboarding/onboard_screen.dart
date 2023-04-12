import 'package:flutter/material.dart';

import './body.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.lightBlue,
        backgroundColor: Colors.purple[50],
        onPressed: Navigator.of(context).pop,
        child: Icon(Icons.backspace_outlined),
      ),
    );
  }
}