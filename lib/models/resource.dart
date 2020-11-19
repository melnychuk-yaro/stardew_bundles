import 'package:flutter/material.dart';

class Resource with ChangeNotifier {
  final String title;
  final String image;
  final int quantity;
  bool isCompleted;

  Resource({
    @required this.title,
    this.image = 'assets/images/resources/wild_horseradish.png',
    this.quantity = 1,
    this.isCompleted = false,
  });

  void toggleIsCompleted() {
    isCompleted = !isCompleted;
    notifyListeners();
  }
}
