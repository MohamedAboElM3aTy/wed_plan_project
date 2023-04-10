import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WedPlan App'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Text('Welcome to my App'),
      ),
    );
  }
}
