import 'package:flutter/material.dart';

import 'package:wed_plan_project/models/cart.dart';
import 'package:wed_plan_project/utilities/constants.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.cartItem,
  });

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: kColorScheme.secondary,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 8,
      ),
      child: ListTile(
        leading: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Image.asset(
            cartItem.vendor.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          cartItem.packageName,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        subtitle: Text(
          cartItem.vendor.name,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black.withOpacity(0.5),
              ),
        ),
        trailing: Text(
          '\EGP ${cartItem.price.toStringAsFixed(0)}',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
        ),
      ),
    );
  }
}
