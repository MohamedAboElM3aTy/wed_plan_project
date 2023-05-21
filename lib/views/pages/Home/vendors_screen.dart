import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/views/widgets/vendor_item.dart';

class VendorsScreen extends StatelessWidget {
  final String? title;
  final List<Vendor> vendors;

  const VendorsScreen({
    Key? key,
    this.title,
    required this.vendors,
  }) : super(key: key);

  void _selectVendor(BuildContext context, Vendor vendor) {
    Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.vendorDetails,
      arguments: {
        'vendor': vendor,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          title!,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 22,
                color: kColorScheme.secondary,
              ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: vendors.length,
        itemBuilder: (context, index) => VendorItem(
          vendor: vendors[index],
          onTap: () => _selectVendor(context, vendors[index]),
        ),
      ),
    );
  }
}
