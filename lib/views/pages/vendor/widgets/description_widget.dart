import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wed_plan_project/models/vendor.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.vendor,
  });

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Description',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Hello I am ${vendor.name}, I am a ${vendor.category}, I provide many services you can check it out on my instagram page and you will Find samples on my work , I hope it will be helpful to Your needs, wish you a happy wedding :)',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.42,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    iconSize: MaterialStateProperty.all(30),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  icon: Icon(Icons.link),
                  onPressed: () {
                    launchUrl(
                      Uri.parse(vendor.businessUrl),
                    );
                  },
                  label: Text(
                    'Instagram',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
