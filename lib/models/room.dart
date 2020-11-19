import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';

class Room {
  final String title;
  final ImageProvider image;
  final List<Bundle> bundles;
  bool isCompleted;

  Room({this.title, this.image, this.bundles});
}
