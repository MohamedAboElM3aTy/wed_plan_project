import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wed_plan_project/models/vendor.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(Vendor vendor, int price, String id,String package) {
    _cartItems.add(CartItem(
      vendor: vendor,
      price: vendor.price,
      id: vendor.id,
      packageName: package,
    ));
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    _cartItems.remove(cartItem);
    notifyListeners();
  }

  double getTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in _cartItems) {
      totalPrice += cartItem.price;
    }
    return totalPrice;
  }
}

class CartItem {
  final Vendor vendor;
  final int price;
  final String id;
  final String packageName;

  CartItem({
    required this.vendor,
    required this.price,
    required this.id,
    required this.packageName,
  });
}

final cartProvider = ChangeNotifierProvider((ref) => CartProvider());
