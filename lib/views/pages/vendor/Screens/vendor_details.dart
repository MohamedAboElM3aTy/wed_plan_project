import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/models/cart.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/features/cart/presentation/cubit/cart_bloc.dart';
import 'package:wed_plan_project/features/favourites/presentation/cubit/favourite_bloc.dart';
import 'package:wed_plan_project/views/pages/vendor/widgets/description_widget.dart';
import 'package:wed_plan_project/views/pages/vendor/widgets/drop_down_menu.dart';
import 'package:wed_plan_project/views/widgets/main_button.dart';
import 'package:wed_plan_project/views/pages/vendor/widgets/product_details_row.dart';

class VendorsDetails extends StatefulWidget {
  const VendorsDetails({Key? key, required this.vendor}) : super(key: key);

  final Vendor vendor;

  @override
  State<VendorsDetails> createState() => _VendorsDetailsState();
}

class _VendorsDetailsState extends State<VendorsDetails> {
  late final FavouriteBloc _favoriteBloc;
  late final CartBloc _cartBloc;
  bool _isFavorite = false;
  bool _isAddedToCart = false;
  String? _selectedPackage;

  @override
  void initState() {
    _favoriteBloc = BlocProvider.of<FavouriteBloc>(context);
    _cartBloc = BlocProvider.of<CartBloc>(context);
    _isFavorite = _favoriteBloc.isFavorite(widget.vendor);
    _isAddedToCart = _cartBloc.isAddedToCart(widget.vendor.id);
    super.initState();
  }

  @override
  void dispose() {
    _favoriteBloc.close();
    _cartBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themes = Theme.of(context).textTheme;
    final snackBar = ScaffoldMessenger.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.vendor.name),
        actions: [
          BlocConsumer<FavouriteBloc, FavouriteState>(
            listener: (context, state) {
              if (state is AddToFavoriteState) {
                _isFavorite = !_isFavorite;
                snackBar.clearSnackBars();
                snackBar.showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 1),
                    content: Text(
                      _isFavorite
                          ? 'Added to favorites!'
                          : 'Removed from favorites!',
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return IconButton(
                onPressed: () =>
                    _favoriteBloc.add(FavouriteToggleEvent(widget.vendor)),
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: Tween(
                        begin: 0.8,
                        end: 1.0,
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: Icon(
                    _isFavorite ? Icons.star : Icons.star_border,
                    key: ValueKey(_isFavorite),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            child: Image.asset(
              widget.vendor.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20.0),
          ProductDetailsRow(
            vendor: widget.vendor,
            name: widget.vendor.name.toUpperCase(),
            nameStyle: themes.titleLarge!.copyWith(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            catStyle: themes.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          ProductDetailsRow(
            vendor: widget.vendor,
            name: widget.vendor.category.toUpperCase(),
            nameStyle: themes.bodyMedium!.copyWith(
              color: Colors.grey,
              fontSize: 18,
            ),
            thirdIcon: Icons.phone,
            icon: Icons.star,
            iconColor: Colors.yellow,
            text: widget.vendor.rating.toString(),
            catStyle: themes.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6.0),
          DescriptionWidget(vendor: widget.vendor),
          const SizedBox(height: 8.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: DropDownMenuComponent(
                            items: const [
                              'WEDDING',
                              'ENGAGEMENT',
                            ],
                            hint: 'Choose Package',
                            selectedValue: _selectedPackage,
                            onChanged: (String? newValue) {
                              _selectedPackage = newValue;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Platform.isIOS ? SizedBox(height: 16.0) : SizedBox(height: 0),
          ProductDetailsRow(
            vendor: widget.vendor,
            name: 'Price',
            icon: Icons.attach_money,
            iconColor: Colors.white10,
            text: '\EGP ${widget.vendor.price.toString()}',
            nameStyle: themes.titleLarge!.copyWith(
              color: Colors.black,
              fontSize: 22,
            ),
            catStyle: themes.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.red[900],
            ),
          ),
          const SizedBox(height: 12.0),
          BlocConsumer<CartBloc, CartState>(
            listener: (context, state) {
              if (state is AddToCartState) {
                _isAddedToCart = !_isAddedToCart;
                snackBar.clearSnackBars();
                snackBar.showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 1),
                    content: Text(
                      _isAddedToCart ? 'Added to cart!' : 'Removed from cart!',
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return MainButton(
                text: _isAddedToCart ? 'Remove From Cart' : 'Add to cart',
                onTap: () {
                  if (_selectedPackage == null) {
                    snackBar.showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 1),
                        content: const Text(
                          'Please choose a package',
                        ),
                      ),
                    );
                    return;
                  }
                  final item = CartItem(
                    vendor: widget.vendor,
                    price: widget.vendor.price,
                    id: widget.vendor.id,
                    packageName: _selectedPackage!,
                  );
                  if (_isAddedToCart)
                    _cartBloc.add(CartRemoveEvent(item));
                  else
                    _cartBloc.add(CartAddEvent(item));
                },
                hasCircularBorder: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
