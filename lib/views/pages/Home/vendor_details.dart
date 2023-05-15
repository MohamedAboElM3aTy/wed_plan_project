import 'package:flutter/material.dart';

import 'package:wed_plan_project/models/vendor.dart';

class VendorsDetails extends StatelessWidget {
  const VendorsDetails({
    super.key,
    required this.vendor,
  });

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          vendor.name,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.event_busy_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
              child: Image.asset(
                vendor.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                FittedBox(
                  child: Text(
                    vendor.name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
