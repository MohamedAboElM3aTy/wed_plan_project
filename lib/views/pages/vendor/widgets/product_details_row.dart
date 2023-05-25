import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wed_plan_project/models/vendor.dart';

class ProductDetailsRow extends StatelessWidget {
  const ProductDetailsRow({
    super.key,
    required this.vendor,
    required this.name,
    this.icon,
    this.iconColor,
    this.text,
    required this.nameStyle,
    required this.catStyle,
    this.thirdIcon,
  });

  final Vendor vendor;
  final String name;
  final IconData? icon;
  final Color? iconColor;
  final String? text;
  final TextStyle nameStyle;
  final TextStyle catStyle;
  final IconData? thirdIcon;

  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

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
          if (text != null)
            Row(
              children: [
                if (thirdIcon != null) ...[
                  InkWell(
                    onTap: () => _makePhoneCall(vendor.phoneNumber),
                    child: Icon(
                      thirdIcon,
                      size: 24,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 6),
                ],
                Icon(
                  icon,
                  color: iconColor,
                  size: 28,
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
