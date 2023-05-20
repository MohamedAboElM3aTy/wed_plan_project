part of 'favourite_bloc.dart';

abstract class FavouriteState extends Equatable {
  const FavouriteState();

  @override
  List<Object> get props => [];
}

class FavouriteInitial extends FavouriteState {}

class FavouriteLoaded extends FavouriteState {
  final List<Vendor> vendors;

  FavouriteLoaded(this.vendors);

  @override
  List<Object> get props => [vendors];
}

class FavouriteError extends FavouriteState {
  final String message;

  FavouriteError(this.message);

  @override
  List<Object> get props => [message];
}

class AddToFavoriteState extends FavouriteState {}

// ? I edit here
class RemoveFromFavoriteState extends FavouriteState {}
