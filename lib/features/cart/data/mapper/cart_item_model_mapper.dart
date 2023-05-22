import 'package:wed_plan_project/features/cart/data/adapters/order_model.dart';
import 'package:wed_plan_project/features/favourites/data/mapper/vendor_model_mapper.dart';
import 'package:wed_plan_project/models/cart.dart';

extension CartItemModelMapper on CartItemModel {
  CartItem toEntity() => CartItem(
        vendor: vendor.toEntity(),
        price: price,
        id: id,
        packageName: packageName,
      );
}

extension CartItemEntityMapper on CartItem {
  CartItemModel toModel() => CartItemModel(
        vendor: vendor.toModel(),
        price: price,
        id: id,
        packageName: packageName,
      );
}
