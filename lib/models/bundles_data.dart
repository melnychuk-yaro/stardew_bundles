import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';

class BundlesData with ChangeNotifier {
  List<Room> _rooms = [
    Room(
      title: 'Crafts Room',
      image: 'assets/images/rooms/Community_Center_Crafts_Room.png',
      bundles: [
        Bundle(title: 'Spring Foraging', resources: [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ]),
      ],
    ),
    Room(
      title: 'Crafts Room 2',
      image: 'assets/images/rooms/Community_Center_Crafts_Room.png',
      bundles: [
        Bundle(title: 'Spring Foraging', resources: [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ]),
      ],
    ),
    Room(
      title: 'Crafts Room 3',
      image: 'assets/images/rooms/Community_Center_Crafts_Room.png',
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

  List<Room> get rooms => _rooms;
  int get roomsCount => _rooms.length;
}
