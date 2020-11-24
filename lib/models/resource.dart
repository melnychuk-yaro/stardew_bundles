import 'package:flutter/material.dart';
import 'package:stardrew_bundles/services/database.dart';

class Resource {
  int id;
  final String title;
  final String image;
  final int quantity;
  int bundleId;
  int roomId;
  bool done;

  Resource({
    this.id,
    @required this.title,
    this.image = 'assets/images/resources/wild_horseradish.png',
    this.quantity = 1,
    this.done = false,
    this.bundleId,
    this.roomId,
  });

  factory Resource.fromMap(Map<String, dynamic> map) => Resource(
        id: map[DBProvider.resourcesColumnId],
        title: map[DBProvider.resourcesColumnTitle],
        image: map[DBProvider.resourcesColumnImage],
        quantity: map[DBProvider.resourcesColumnQuantity],
        done: map[DBProvider.resourcesColumnDone] == 1 ? true : false,
        bundleId: map[DBProvider.resourcesColumnBundleId],
        roomId: map[DBProvider.resourcesColumnRoomId],
      );

  Map<String, dynamic> toMap() {
    var map = {
      DBProvider.resourcesColumnTitle: title,
      DBProvider.resourcesColumnImage: image,
      DBProvider.resourcesColumnQuantity: quantity,
      DBProvider.resourcesColumnDone: done ? 1 : 0,
      DBProvider.resourcesColumnBundleId: bundleId,
      DBProvider.resourcesColumnRoomId: roomId,
    };
    if (id != null) {
      map[DBProvider.resourcesColumnId] = id;
    }
    return map;
  }

  void toggleIsDone() {
    done = !done;
  }
}
