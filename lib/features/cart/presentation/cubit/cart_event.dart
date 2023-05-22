part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class CartLoadEvent extends CartEvent {}

class CartAddEvent extends CartEvent {
  final CartItem item;

  CartAddEvent(this.item);

  @override
  List<Object> get props => [item];
}

class CartRemoveEvent extends CartEvent {
  final CartItem item;

  CartRemoveEvent(this.item);

  @override
  List<Object> get props => [item];
}

class CartClearEvent extends CartEvent {}


class RemoveF extends CartEvent {
  final CartItem cartItem;

  RemoveF(this.cartItem);

  @override
  List<Object> get props => [cartItem];
}