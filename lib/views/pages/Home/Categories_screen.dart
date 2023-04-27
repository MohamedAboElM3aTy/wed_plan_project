import 'package:flutter/material.dart';

import 'package:wed_plan_project/utilities/constants.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/widgets/category_grid_item.dart';
import 'package:wed_plan_project/data/dummy_data.dart';
import 'package:wed_plan_project/views/widgets/main_drawer.dart';

// ! My app idea is that it will help bridesmaid to organize their wedding through collecting all the information they need in one place.
// ? They take a lot of time searching on the internet so i decided to collect all their needs in one single platform.
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 22,
                color: kColorScheme.secondary,
              ),
        ),
      ),
      drawer: MainDrawer(),
      body: GridView(
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
              // onTap: () => Navigator.of(context).pushNamed(AppRoutes.vendorsScreen),
            )
        ],
      ),
    );
  }
}
