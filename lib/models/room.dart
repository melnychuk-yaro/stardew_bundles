import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';

class Room {
  final String title;
  final String image;
  final List<Bundle> bundles;
  bool isCompleted;

  Room({
    @required this.title,
    this.image = 'assets/images/rooms/Community_Center_Crafts_Room.png',
    this.bundles,
  });
}
