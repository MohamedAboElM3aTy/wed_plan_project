import 'package:flutter/material.dart';

class VendorsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Specs '),
      ),
      body: Center(
        child: Text(
          'Welcome to vendors page',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
