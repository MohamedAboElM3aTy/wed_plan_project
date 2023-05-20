import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/features/favourites/data/adapters/vendor_model.dart';

extension VendorModelMapper on VendorModel {
  Vendor toEntity() => Vendor(
        name: name,
        id: id,
        category: category,
        imageUrl: imageUrl,
        businessUrl: businessUrl,
        phoneNumber: phoneNumber,
        rating: rating,
        price: price,
      );
}

extension VendorMapper on Vendor {
  VendorModel toModel() => VendorModel(
        name: name,
        id: id,
        category: category,
        imageUrl: imageUrl,
        businessUrl: businessUrl,
        phoneNumber: phoneNumber,
        rating: rating,
        price: price,
      );
}
