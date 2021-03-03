import 'package:flutter/foundation.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:stardrew_bundles/services/database.dart';

class BundlesData with ChangeNotifier {
  List<Room> _rooms = [];
  List<Room> get rooms => _rooms;
  int get roomsCount => _rooms.length;

  Future<void> toggleIsDoneResource(
    Resource resource,
    Bundle bundle,
    Room room,
  ) async {
    resource.toggleIsDone();
    bundle.checkBundleDone();
    room.checkRoomIsDone();
    await Future.wait([
      DBProvider.db.updateResource(resource),
      DBProvider.db.updateBundle(bundle),
      DBProvider.db.updateRoom(room),
    ]);

    notifyListeners();
  }

  Future<void> getRooms() async {
    final List<Room> rooms = await DBProvider.db.getRooms();
    for (Room room in rooms) {
      List<Bundle> bundles = await DBProvider.db.getBundlesByRoomId(room.id);
      room.bundles = bundles;
      for (Bundle bundle in bundles) {
        List<Resource> resources =
            await DBProvider.db.getResourcesByBundleId(bundle.id);
        bundle.resources = resources;
      }
    }
    _rooms = rooms;
    notifyListeners();
  }

  Future<void> getBundlesByRoomid(int roomId) async {
    await DBProvider.db.getBundlesByRoomId(roomId);
    notifyListeners();
  }

  bool isDoneResource(Resource resource) => resource.done;
  bool isDoneBundle(Bundle bundle) => bundle.done;
  bool isDoneRoom(Room room) => room.done;
}
