import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';

class BundlessData with ChangeNotifier {
  List<Room> rooms = [
    Room(
      title: 'Crafts Room',
      image: AssetImage('Community_Center_Crafts_Room.png'),
      bundles: [
        Bundle(title: 'Spring Foraging', resources: [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ]),
      ],
    ),
  ];
}
