import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';

List<Map<String, dynamic>> data = [
  {
    'room': Room(
      title: 'Crafts Room',
      image: 'assets/images/rooms/Community_Center_Crafts_Room.png',
    ),
    'bundles': [
      {
        'bundle': Bundle(
          title: 'Spring Foraging',
          image: 'assets/images/bundles/Bundle_Green.png',
        ),
        'resources': [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ],
      },
      {
        'bundle': Bundle(
          title: 'Summer Foraging',
          image: 'assets/images/bundles/Bundle_Yellow.png',
        ),
        'resources': [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ],
      },
    ],
  },
  {
    'room': Room(
      title: 'Pantry',
      image: 'assets/images/rooms/Community_Center_Pantry.png',
    ),
    'bundles': [
      {
        'bundle': Bundle(title: 'Spring Crops Bundle'),
        'resources': [
          Resource(title: 'Parsnip'),
          Resource(title: 'Green Bean'),
          Resource(title: 'Cauliflower'),
          Resource(title: 'Potato'),
        ],
      },
    ],
  },
  {
    'room': Room(
      title: 'Fish Tank',
      image: 'assets/images/rooms/Community_Center_Fish_Tank.png',
    ),
    'bundles': [
      {
        'bundle': Bundle(title: 'River Fish Bundle'),
        'resources': [
          Resource(title: 'Sunfish'),
          Resource(title: 'Catfish'),
          Resource(title: 'Shad'),
          Resource(title: 'Tiger Trout'),
        ],
      },
    ],
  },
];
