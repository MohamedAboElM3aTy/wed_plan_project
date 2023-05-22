import 'package:wed_plan_project/models/vendor.dart';

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