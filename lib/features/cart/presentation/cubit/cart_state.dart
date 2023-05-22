part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoadedState extends CartState {
  final List<CartItem> items;
  final double totalPrice;

  CartLoadedState(this.items, [this.totalPrice = 0]);

  @override
  List<Object> get props => [items];
}

class CartErrorState extends CartState {
  final String message;

  CartErrorState(this.message);

  @override
  List<Object> get props => [message];
}

class AddToCartState extends CartState {}

class RemoveFromCartState extends CartState {} // !