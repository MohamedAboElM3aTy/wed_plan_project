import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/intro-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WedPlan App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: const Text('Welcome to my App'),
      ),
    );
  }
}
