import 'package:flutter/material.dart';

import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/utilities/constants.dart';

class FavoriteContainer extends StatelessWidget {
  const FavoriteContainer({
    super.key,
    required this.vendor,
  });

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      child: ListTile(
        leading: Container(
          width: size.width * 0.15,
          height: size.height * 0.15,
          child: Image.asset(
            vendor.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          vendor.name,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: kColorScheme.onPrimaryContainer,
              ),
        ),
        subtitle: Text(
          vendor.category,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
        ),
        trailing: Text(
          '\EGP ${vendor.price}',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColorDark,
          ),
        ),
      ),
    );
  }
}
