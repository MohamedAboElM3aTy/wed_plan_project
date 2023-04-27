import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Category {
  final String title;
  final String id;
  final String imageUrl;

  Category({
    required this.title,
    required this.imageUrl,
  }) : id = uuid.v4();
}
