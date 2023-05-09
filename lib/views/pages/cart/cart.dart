import 'package:flutter/material.dart';
import 'package:wed_plan_project/views/widgets/main_drawer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Cart'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Cart Items'),
      ),
    );
  }
}
