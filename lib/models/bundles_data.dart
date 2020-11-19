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
        Bundle(
          title: 'Spring Foraging',
          image: 'assets/images/bundles/Bundle_Green.png',
          resources: [
            Resource(title: 'Wild Horseradish'),
            Resource(title: 'Daffodil'),
            Resource(title: 'Leek'),
            Resource(title: 'Dandelion'),
          ],
        ),
        Bundle(
          title: 'Summer Foraging',
          image: 'assets/images/bundles/Bundle_Yellow.png',
          resources: [
            Resource(title: 'Wild Horseradish'),
            Resource(title: 'Daffodil'),
            Resource(title: 'Leek'),
            Resource(title: 'Dandelion'),
          ],
        ),
      ],
    ),
    Room(
      title: 'Pantry',
      image: 'assets/images/rooms/Community_Center_Pantry.png',
      bundles: [
        Bundle(title: 'Spring Crops Bundle', resources: [
          Resource(title: 'Parsnip'),
          Resource(title: 'Green Bean'),
          Resource(title: 'Cauliflower'),
          Resource(title: 'Potato'),
        ]),
      ],
    ),
    Room(
      title: 'Fish Tank',
      image: 'assets/images/rooms/Community_Center_Fish_Tank.png',
      bundles: [
        Bundle(title: 'River Fish Bundle', resources: [
          Resource(title: 'Sunfish'),
          Resource(title: 'Catfish'),
          Resource(title: 'Shad'),
          Resource(title: 'Tiger Trout'),
        ]),
      ],
    ),
  ];

  List<Room> get rooms => _rooms;
  int get roomsCount => _rooms.length;

  void toggleResourceIsCompleted(Resource resource) {
    resource.toggleIsCompleted();
    notifyListeners();
  }
}
