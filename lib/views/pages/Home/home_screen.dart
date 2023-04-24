import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

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
