part of 'favourite_bloc.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();

  @override
  List<Object> get props => [];
}

class FavouriteLoadEvent extends FavouriteEvent {}

class FavouriteToggleEvent extends FavouriteEvent {
  final Vendor vendor;

  FavouriteToggleEvent(this.vendor);

  @override
  List<Object> get props => [vendor];
}

// !
class RemoveFavoriteEvent extends FavouriteEvent {
  final Vendor vendor;

  RemoveFavoriteEvent(this.vendor);

  @override
  List<Object> get props => [vendor];
}
