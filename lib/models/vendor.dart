import 'package:uuid/uuid.dart';

// * First screen contains all categories
// ! Second screen when choosing specific category Opens all vendors 
// ! Maybe f Second screen yb2a image el vendor w the name 
// * Third Screen kol vendor el description bta3o 


class Vendor {
  final String name;
  final String imageUrl;
  final String id;
  final String description;
  final double price;

  Vendor({
    this.price = 0.0,
    required this.description,
    required this.name,
    required this.imageUrl,
  }) : id = Uuid().v4();
}
