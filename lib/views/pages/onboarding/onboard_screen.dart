import 'package:flutter/material.dart';

import './body.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      // floatingActionButton: FloatingActionButton(
      //   foregroundColor: Colors.lightBlue,
      //   backgroundColor: Colors.purple[50],
      //   onPressed: Navigator.of(context).pop,
      //   child: Icon(Icons.backspace_outlined),
      // ),
    );
  }
}