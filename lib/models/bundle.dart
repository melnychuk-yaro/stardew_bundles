import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/services/database.dart';

class Bundle {
  int id;
  final String title;
  final String image;
  final int countToComplete;
  List<Resource> resources;
  bool done;
  int roomId;

  Bundle({
    this.id,
    @required this.title,
    this.image = 'assets/images/bundles/Bundle_Green.png',
    this.countToComplete = 0,
    this.resources,
    this.done = false,
    this.roomId,
  });

  factory Bundle.fromMap(Map<String, dynamic> map) => Bundle(
        id: map[DBProvider.bundlesColumnId],
        title: map[DBProvider.bundlesColumnTitle],
        image: map[DBProvider.bundlesColumnImage],
        roomId: map[DBProvider.bundlesColumnRoomId],
        countToComplete: map[DBProvider.bundlesColumnCountToComplete],
        done: map[DBProvider.bundlesColumnDone] == 1 ? true : false,
      );

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      DBProvider.bundlesColumnTitle: title,
      DBProvider.bundlesColumnImage: image,
      DBProvider.bundlesColumnRoomId: roomId,
      DBProvider.bundlesColumnCountToComplete: countToComplete,
      DBProvider.bundlesColumnDone: done ? 1 : 0,
    };
    if (id != null) {
      map[DBProvider.bundlesColumnId] = id;
    }

    return map;
  }

  void checkBundleDone() {
    int completed = 0;
    int itemsToComplete =
        countToComplete > 0 ? countToComplete : resources.length;
    for (final Resource resource in resources) {
      if (resource.done == true) {
        completed++;
      }
    }
    done = completed >= itemsToComplete ? true : false;
  }
}
