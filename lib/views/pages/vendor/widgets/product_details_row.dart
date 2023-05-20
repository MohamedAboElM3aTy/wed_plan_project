import 'package:flutter/material.dart';
import 'package:wed_plan_project/models/vendor.dart';

class ProductDetailsRow extends StatelessWidget {
  const ProductDetailsRow({
    super.key,
    required this.vendor,
    required this.name,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.nameStyle,
    required this.catStyle,
  });

  final Vendor vendor;
  final String name;
  final IconData icon;
  final Color iconColor;
  final String text;
  final TextStyle nameStyle;
  final TextStyle catStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              name,
              style: nameStyle,
            ),
          ),
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(width: 5),
              Text(
                text.toString(),
                style: catStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}