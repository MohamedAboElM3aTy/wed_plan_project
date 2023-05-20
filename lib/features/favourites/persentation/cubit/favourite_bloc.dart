import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/features/favourites/data/service/favourite_cache_service.dart';
import 'package:rxdart/rxdart.dart';

part 'favourite_state.dart';
part 'favourite_events.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  late final FavoriteCacheService _cacheService;
  late final BehaviorSubject<List<Vendor>> _favoriteVendorController;
  final List<Vendor> _favouriteVendor = [];

  FavouriteBloc() : super(FavouriteInitial()) {
    _cacheService = FavoriteCacheServiceImpl();
    _favoriteVendorController = BehaviorSubject<List<Vendor>>();
    _cacheService.init();
    on<FavouriteEvent>((event, emit) async {
      if (event is FavouriteLoadEvent) {
        await _loadVendors(emit);
      } else if (event is FavouriteToggleEvent) {
        await _toggleVendorToFavourite(event.vendor, emit);
      } else if (event is RemoveFavoriteEvent) {
        await _removeVendorFromFavorites(event.vendor, emit);  // ? I edit here
      }
    });
  }

  Stream<List<Vendor>> get vendorStream =>
      _favoriteVendorController.stream.asBroadcastStream();

  bool isFavorite(Vendor vendor) => _favouriteVendor.contains(vendor);

  Future<void> _loadVendors(Emitter<FavouriteState> emit) async {
    await _cacheService.init();
    final result = await _cacheService.getFavorites();
    _favouriteVendor.addAll(result);
    _favoriteVendorController.sink.add(_favouriteVendor);
    await emit.forEach(
      vendorStream,
      onData: (vendorList) => FavouriteLoaded(vendorList),
      onError: (error, stackTrace) => FavouriteError(error.toString()),
    );
  }

  Future<void> _toggleVendorToFavourite(
      Vendor vendor, Emitter<FavouriteState> emit) async {
    final vendorIsFavorite = _favouriteVendor.contains(vendor);
    if (vendorIsFavorite) {
      final result = await _cacheService.deleteFavorite(vendor.id);
      if (!result) return;
      _favouriteVendor.removeWhere((v) => v.id == vendor.id);
      _favoriteVendorController.sink.add(_favouriteVendor);
      emit(AddToFavoriteState());
    } else {
      final result = await _cacheService.cacheFavorite(vendor);
      if (!result) return;
      _favouriteVendor.add(vendor);
      _favoriteVendorController.sink.add(_favouriteVendor);
      emit(AddToFavoriteState());
    }
  }

  // ? I edit here
  Future<void> _removeVendorFromFavorites(
      Vendor vendor, Emitter<FavouriteState> emit) async {
    final vendorIsFavorite = _favouriteVendor.contains(vendor);
    if (vendorIsFavorite) {
      final result = await _cacheService.deleteFavorite(vendor.id);
      if (!result) return;
      _favouriteVendor.removeWhere((v) => v.id == vendor.id);
      _favoriteVendorController.sink.add(_favouriteVendor);
      emit(RemoveFromFavoriteState());
    }
  }

  @override
  Future<void> close() {
    _favoriteVendorController.close();
    _cacheService.dispose();
    return super.close();
  }
}
