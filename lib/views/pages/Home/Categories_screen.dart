import 'package:flutter/material.dart';

import 'package:wed_plan_project/data/dummy_data.dart';
import 'package:wed_plan_project/models/category.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    Key? key,
    required this.availableVendors,
  }) : super(key: key);

  final List<Vendor> availableVendors;

  void _selectCategory(BuildContext context, Category category) {
    final filteredVendors =
        availableVendors.where((vendor) => vendor.id == category.id).toList();

    Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.vendorsScreen,
      arguments: {
        'title': category.title,
        'vendors': filteredVendors,
      },
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(4),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 6 / 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onTap: () => _selectCategory(context, category),
          )
      ],
    );
  }
}
