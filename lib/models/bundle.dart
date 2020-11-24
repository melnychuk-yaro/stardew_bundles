import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/services/database.dart';

class Bundle {
  int id;
  final String title;
  final String image;
  List<Resource> resources;
  bool done;
  int roomId;

  Bundle({
    this.id,
    @required this.title,
    this.image = 'assets/images/bundles/Bundle_Green.png',
    this.resources,
    this.done = false,
    this.roomId,
  });

  factory Bundle.fromMap(Map<String, dynamic> map) => Bundle(
        id: map[DBProvider.bundlesColumnId],
        title: map[DBProvider.bundlesColumnTitle],
        image: map[DBProvider.bundlesColumnImage],
        roomId: map[DBProvider.bundlesColumnRoomId],
        done: map[DBProvider.bundlesColumnDone] == 1 ? true : false,
      );

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      DBProvider.bundlesColumnTitle: title,
      DBProvider.bundlesColumnImage: image,
      DBProvider.bundlesColumnRoomId: roomId,
      DBProvider.bundlesColumnDone: done ? 1 : 0,
    };
    if (id != null) {
      map[DBProvider.bundlesColumnId] = id;
    }

    return map;
  }

  void checkBundleDone() {
    done = true;
    for (final resource in resources) {
      if (resource.done == false) {
        done = false;
        break;
      }
    }
  }
}
