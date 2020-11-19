import 'package:flutter/material.dart';

class Resource {
  final String title;
  final String image;
  final int quantity;
  bool isOwned;
  bool isCompleted;

  Resource({
    @required this.title,
    this.image = 'assets/images/resources/wild_horseradish.png',
    this.quantity = 1,
    this.isOwned = false,
    this.isCompleted = false,
  });
}
