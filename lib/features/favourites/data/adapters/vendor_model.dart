import 'package:hive/hive.dart';

part 'vendor_model.g.dart';

@HiveType(typeId: 0, adapterName: 'VendorAdapter')
class VendorModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String category;
  @HiveField(3)
  final String imageUrl;
  @HiveField(4)
  final String businessUrl;
  @HiveField(5)
  final String phoneNumber;
  @HiveField(6)
  final double rating;
  @HiveField(7)
  final int price;

  VendorModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.businessUrl,
    required this.phoneNumber,
    required this.rating,
    required this.price,
  });
}
