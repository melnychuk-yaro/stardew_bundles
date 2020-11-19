import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/resource.dart';

class Bundle {
  final String title;
  final String image;
  final List<Resource> resources;
  bool isComleted;

  Bundle({
    @required this.title,
    this.image = 'assets/images/bundles/Bundle_Green.png',
    this.resources,
    this.isComleted = false,
  });
}
