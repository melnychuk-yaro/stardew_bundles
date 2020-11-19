import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/resource.dart';

class Bundle {
  final String title;
  final ImageProvider image;
  final List<Resource> resources;
  bool isComleted;

  Bundle({this.title, this.image, this.resources, this.isComleted = false});
}
