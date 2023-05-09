import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';
import 'package:wed_plan_project/models/vendor.dart';

// ! The decoration of the vendor Screen

class VendorItem extends StatelessWidget {
  const VendorItem({
    super.key,
    required this.vendor,
  });
  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(vendor.imageUrl),
              fit: BoxFit.fill,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.deepPurple[200],
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 4,
                ),
                child: Column(
                  children: [
                    Text(
                      vendor.name,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
