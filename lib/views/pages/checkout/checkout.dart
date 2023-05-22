import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/features/cart/presentation/cubit/cart_bloc.dart';
import 'package:wed_plan_project/models/cart.dart';
import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/utilities/routes.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    super.key,
    required this.cartItems,
  });

  final List<CartItem> cartItems;
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late final CartBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<CartBloc>(context);
    super.initState();
  }

  void _submitOrder() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: Text(
          'Order Submitted',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
        ),
        content: Text(
          'Your order has been submitted successfully',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          Icon(
            Icons.done,
            size: 30,
            color: Colors.green,
          ),
          TextButton(
            onPressed: () {
              _bloc.add(CartClearEvent());
              Navigator.of(context).pop();
              Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.bottomNavBar);
            },
            child: Text(
              'Done',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.green[500],
                    fontSize: 20,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorScheme.primary,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: kColorScheme.secondary,
              ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Text(
                'Order Summary',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final checkout = widget.cartItems;
                return Container(
                  child: Card(
                    elevation: 5,
                    color: Theme.of(context).canvasColor,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 4.0,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          // leading: Text(checkout.elementAt(index).vendor.category),
                          title: Text(
                            checkout.elementAt(index).vendor.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                          subtitle: Text(
                            checkout.elementAt(index).packageName,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                          ),
                          trailing: Text(
                            '\$${checkout.elementAt(index).vendor.price.toString()}',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: kColorScheme.error,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: 250,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.red,
                ),
              ),
              onPressed: null,
              child: FittedBox(
                child: Text(
                  'Total price : \$${widget.cartItems.fold(0, (sum, item) => sum + item.vendor.price)}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              bottom: 30,
              left: 30,
              right: 30,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.green,
                ),
              ),
              onPressed: _submitOrder,
              child: Text(
                'Done',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
