import 'package:hive_flutter/hive_flutter.dart';
import 'package:wed_plan_project/features/cart/data/adapters/order_model.dart';
import 'package:wed_plan_project/features/cart/data/mapper/cart_item_model_mapper.dart';
import 'package:wed_plan_project/models/cart.dart';

abstract class CartCacheService {
  Future<void> init();

  Future<bool> cacheItem(CartItem cartItem);

  Future<bool> deleteItem(String id);
  Future<bool> clearCart();

  Future<List<CartItem>> getItem();

  void dispose();
}

class CartCacheServiceImpl implements CartCacheService {
  final cartBoxName = "cart";
  bool _isInitialized = false;

  @override
  Future<void> init() async {
    try {
      if (_isInitialized) return;
      await Hive.initFlutter();
      if (!Hive.isAdapterRegistered(1)) {
        Hive.registerAdapter(CartItemAdapter());
      }
      await Hive.openBox<CartItemModel>(cartBoxName);
      _isInitialized = true;
    } on Exception catch (e) {
      print(e.toString());
      return;
    }
  }

  @override
  Future<bool> cacheItem(CartItem cartItem) async {
    try {
      final vendorBox = Hive.box<CartItemModel>(cartBoxName);
      await vendorBox.put(cartItem.id, cartItem.toModel());
      return true;
    } catch (e) {
      print("OnError $e");
      return false;
    }
  }

  @override
  Future<bool> deleteItem(String number) async {
    try {
      final cartBox = Hive.box<CartItemModel>(cartBoxName);
      await cartBox.delete(number);
      return true;
    } catch (e) {
      print("OnError $e");
      return false;
    }
  }

  @override
  Future<List<CartItem>> getItem() async {
    try {
      final result = Hive.box<CartItemModel>(cartBoxName).values.toList();
      final cartItems = result.map((e) => e.toEntity()).toList();
      return cartItems;
    } catch (e) {
      print("OnError $e");
      rethrow;
    }
  }

  @override
  void dispose() {
    Hive.close();
  }

  @override
  Future<bool> clearCart() async {
    try {
      final cartBox = Hive.box<CartItemModel>(cartBoxName);
      cartBox.clear();
      return true;
    } catch (e) {
      print("OnError $e");
      return false;
    }
  }
}
