import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wed_plan_project/providers/cart_provider.dart';

class CartScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider).cartItems;

    return Scaffold(
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index];

          return ListTile(
            title: Text(cartItem.vendor.name),
            subtitle: Text(cartItem.vendor.id),
            trailing: Text('\$${cartItem.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}



// MainButton(
//             text: 'Checkout',
//             onTap: () => Navigator.of(context).pushNamed(AppRoutes.checkout),
//           ),