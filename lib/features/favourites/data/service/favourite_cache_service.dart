import 'package:hive_flutter/hive_flutter.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/features/favourites/data/adapters/vendor_model.dart';
import 'package:wed_plan_project/features/favourites/data/mapper/vendor_model_mapper.dart';

abstract class FavoriteCacheService {
  Future<void> init();
  Future<bool> cacheFavorite(Vendor vendor);
  Future<bool> deleteFavorite(String id);
  Future<List<Vendor>> getFavorites();

  void dispose();
}

class FavoriteCacheServiceImpl implements FavoriteCacheService {
  final vendorBoxName = "favorites";
  bool _isInitialized = false;

  @override
  Future<void> init() async {
    try {
      if(_isInitialized) return;
      if(!Hive.isAdapterRegistered(0)) {
        Hive.registerAdapter(VendorAdapter());
      }
      await Hive.openBox<VendorModel>(vendorBoxName);
      _isInitialized = true;
    } on Exception catch (e) {
      print(e.toString());
      return;
    }
  }

  @override
  Future<bool> cacheFavorite(Vendor vendor) async {
    try {
      final vendorBox = Hive.box<VendorModel>(vendorBoxName);
      await vendorBox.put(vendor.id, vendor.toModel());
      return true;
    } catch(e) {
      print("OnError $e");
      return false;
    }
  }

  @override
  Future<bool> deleteFavorite(String number) async {
    try {
      final vendorBox = Hive.box<VendorModel>(vendorBoxName);
      await vendorBox.delete(number);
      return true;
    } catch(e) {
      print("OnError $e");
      return false;
    }
  }

  @override
  Future<List<Vendor>> getFavorites() async {
    try {
      final result = Hive.box<VendorModel>(vendorBoxName).values.toList();
      final vendors = result.map((e) => e.toEntity()).toList();
      return vendors;
    } catch(e) {
      print("OnError $e");
      rethrow;
    }
  }

  @override
  void dispose() {
    Hive.close();
  }
}
