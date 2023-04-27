import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:wed_plan_project/models/category.dart';
import 'package:wed_plan_project/utilities/routes.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    // required this.onTap,
  });

  final Category category;
  // final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: InkWell(
        // ? I make the navigation from here
        onTap: () => Navigator.of(context).pushNamed(
          AppRoutes.vendorsScreen,
        ),
        child: Stack(
          children: [
            Hero(
              tag: category.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(category.imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black45,
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 4,
                ),
                child: Column(
                  children: [
                    Text(
                      category.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis, // Very long text ...
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
