import 'package:flutter/material.dart';

// ? Not Used in the project 

class MessageDialog extends StatelessWidget {
  const MessageDialog({
    super.key,
    required this.titleText,
    required this.contentText,
  });

  final String titleText;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleText),
      content: Text(contentText),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
