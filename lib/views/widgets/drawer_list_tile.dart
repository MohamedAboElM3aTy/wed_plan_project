import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  BuildListTile({
    required this.icon,
    required this.onTap,
    required this.titleText,
    super.key,
  });

  final IconData icon;
  final String titleText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        titleText,
        style: TextStyle(
          color: Colors.deepPurple[400],
          fontSize: 25,
        ),
      ),
      onTap: onTap,
    );
  }
}
