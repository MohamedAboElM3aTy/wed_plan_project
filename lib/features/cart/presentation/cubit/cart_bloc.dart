import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wed_plan_project/features/cart/data/service/cart_cache_service.dart';
import 'package:wed_plan_project/models/cart.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  late final CartCacheService _cacheService;
  late final BehaviorSubject<List<CartItem>> _cartController;
  final List<CartItem> _cartItems = [];

  CartBloc() : super(CartInitial()) {
    _cacheService = CartCacheServiceImpl();
    _cartController = BehaviorSubject<List<CartItem>>();
    _cacheService.init();

    on<CartEvent>(
      (event, emit) async {
        if (event is CartLoadEvent) {
          await _loadCart(emit);
        } else if (event is CartAddEvent) {
          await _addToCart(event.item, emit);
        } else if (event is CartRemoveEvent) {
          await _removeFromCart(event.item, emit);
        } else if (event is CartClearEvent) {
          await _clearCart(emit);
        } else if (event is RemoveF) {
          await _removeVendorFromCart(event.cartItem, emit); // !
        }
      },
    );
  }

  Stream<List<CartItem>> get cartStream =>
      _cartController.stream.asBroadcastStream();

  bool isAddedToCart(String id) =>
      _cartItems.any((element) => element.vendor.id == id);

  Future<void> _loadCart(Emitter<CartState> emit) async {
    await _cacheService.init();
    final result = await _cacheService.getItem();
    _cartItems.addAll(result);
    _cartController.sink.add(_cartItems);
    await emit.forEach(
      cartStream,
      onData: (List<CartItem> cartList) => CartLoadedState(
          cartList,
          cartList.fold(
              0,
              (previousValue, element) =>
                  previousValue + element.vendor.price)),
      onError: (error, stackTrace) => CartErrorState(error.toString()),
    );
  }

  Future<void> _addToCart(CartItem item, Emitter<CartState> emit) async {
    final result = await _cacheService.cacheItem(item);
    if (!result) return;
    _cartItems.add(item);
    _cartController.sink.add(_cartItems);
    emit(AddToCartState());
  }

  Future<void> _removeFromCart(CartItem item, Emitter<CartState> emit) async {
    final result = await _cacheService.deleteItem(item.id);
    if (!result) return;
    _cartItems.removeWhere((v) => v.id == item.id);
    _cartController.sink.add(_cartItems);
    emit(AddToCartState());
  }

  // ! 
  Future<void> _removeVendorFromCart(
      CartItem cartItem, Emitter<CartState> emit) async {
    final result = await _cacheService.deleteItem(cartItem.id);
    if (!result) return;
    _cartItems.removeWhere((v) => v.id == cartItem.id);
    _cartController.sink.add(_cartItems);
    emit(AddToCartState());
  }

  Future<void> _clearCart(Emitter<CartState> emit) async {
    final result = await _cacheService.clearCart();
    if (!result) return;
    _cartItems.clear();
    _cartController.sink.add(_cartItems);
    emit(AddToCartState());
  }
}
