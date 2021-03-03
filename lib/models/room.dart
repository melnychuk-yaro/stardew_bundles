import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/services/database.dart';

class Room {
  int? id;
  final String title;
  final String image;
  bool done;
  List<Bundle> bundles;

  Room({
    this.id,
    required this.title,
    this.image = 'assets/images/rooms/Community_Center_Crafts_Room.png',
    this.done = false,
    required this.bundles,
  });

  void checkRoomIsDone() {
    done = true;
    for (final Bundle bundle in bundles) {
      if (bundle.done == false) {
        done = false;
        break;
      }
    }
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map[DBProvider.roomsColumnId],
      title: map[DBProvider.roomsColumnTitle],
      image: map[DBProvider.roomsColumnImage],
      done: map[DBProvider.roomsColumnDone] == 1 ? true : false,
      bundles: <Bundle>[],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      DBProvider.roomsColumnTitle: title,
      DBProvider.roomsColumnImage: image,
      DBProvider.roomsColumnDone: done ? 1 : 0,
    };
    if (id != null) {
      map[DBProvider.roomsColumnId] = id;
    }
    return map;
  }
}
