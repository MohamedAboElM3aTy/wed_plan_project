import 'package:equatable/equatable.dart';

class Vendor extends Equatable {
  final String name;
  final String id;
  final String category;
  final String imageUrl;
  final String businessUrl;
  final String phoneNumber;
  final double rating;
  final int price;

  const Vendor(
      {required this.name,
      required this.id,
      required this.category,
      required this.imageUrl,
      required this.businessUrl,
      required this.phoneNumber,
      required this.rating,
      required this.price,
      });

  @override
  List<Object?> get props => [
        name,
        id,
        category,
        imageUrl,
        businessUrl,
        phoneNumber,
        rating,
        price,
      ];
}