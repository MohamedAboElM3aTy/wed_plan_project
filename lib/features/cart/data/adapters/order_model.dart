import 'package:hive/hive.dart';
import 'package:wed_plan_project/features/favourites/data/adapters/vendor_model.dart';

part 'order_model.g.dart';

@HiveType(typeId: 1, adapterName: 'CartItemAdapter')
class CartItemModel {
  @HiveField(0)
  final VendorModel vendor;
  @HiveField(1)
  final int price;
  @HiveField(2)
  final String id;
  @HiveField(3)
  final String packageName;

  const CartItemModel({
    required this.vendor,
    required this.price,
    required this.id,
    required this.packageName,
  });
}
