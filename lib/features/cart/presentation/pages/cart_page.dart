import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/features/cart/presentation/cubit/cart_bloc.dart';
import 'package:wed_plan_project/features/cart/presentation/widgets/Cart_card.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/widgets/main_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final CartBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<CartBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoadedState) {
            if (state.items.isEmpty) {
              return Center(
                child: Text(
                  'No items yet ... Continue Shopping!',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                      ),
                ),
              );
            }
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        final cartItem = state.items[index];
                        return Dismissible(
                          key: Key(cartItem.vendor.name),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) {
                            _bloc.add(RemoveF(cartItem));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(seconds: 1),
                                content: Text(
                                    '${cartItem.vendor.name} Removed From Cart'),
                              ),
                            );
                          },
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 16),
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          child: CartCard(
                            cartItem: cartItem,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.white.withOpacity(0.1),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 50,
                            width: 140,
                            margin: EdgeInsets.all(7),
                            child: ElevatedButton(
                              onPressed: () => _bloc.add(CartClearEvent()),
                              child: Text(
                                'Clear Cart',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        MainButton(
                          text: 'Proceed To Checkout',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .pushNamed(
                              AppRoutes.checkoutPage,
                              arguments: state.items,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
