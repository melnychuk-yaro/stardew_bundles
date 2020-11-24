import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/data.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static const String tableRooms = 'rooms';
  static const String roomsColumnId = 'id';
  static const String roomsColumnTitle = 'title';
  static const String roomsColumnImage = 'image';
  static const String roomsColumnDone = 'done';

  static const String tableBundles = 'bundles';
  static const String bundlesColumnId = 'id';
  static const String bundlesColumnTitle = 'title';
  static const String bundlesColumnImage = 'image';
  static const String bundlesColumnDone = 'done';
  static const String bundlesColumnRoomId = 'room_id';

  static const String tableResources = 'resources';
  static const String resourcesColumnId = 'id';
  static const String resourcesColumnTitle = 'title';
  static const String resourcesColumnImage = 'image';
  static const String resourcesColumnQuantity = 'quantity';
  static const String resourcesColumnDone = 'done';
  static const String resourcesColumnBundleId = 'bundle_id';
  static const String resourcesColumnRoomId = 'room_id';

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  deleteDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'stardew_bundles.db');
    await deleteDatabase(path);
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'stardew_bundles.db');
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onConfigure: _onConfigure,
    );
    return database;
  }

  static Future _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  _onCreate(Database db, int version) async {
    await Future.wait([
      db.execute('''CREATE TABLE $tableRooms (
          $roomsColumnId	INTEGER PRIMARY KEY,
          $roomsColumnTitle	TEXT,
          $roomsColumnImage	TEXT,
          $roomsColumnDone	INTEGER
        )'''),
      db.execute('''CREATE TABLE $tableBundles (
          $bundlesColumnId INTEGER PRIMARY KEY,
          $bundlesColumnTitle TEXT,
          $bundlesColumnImage TEXT,
          $bundlesColumnDone INTEGER,
          $bundlesColumnRoomId INTEGER,
          FOREIGN KEY ($bundlesColumnRoomId) REFERENCES $tableRooms($roomsColumnId)
        )'''),
      db.execute('''CREATE TABLE $tableResources (
          $resourcesColumnId INTEGER PRIMARY KEY,
          $resourcesColumnTitle TEXT,
          $resourcesColumnImage TEXT,
          $resourcesColumnQuantity INTEGER,
          $resourcesColumnDone INTEGER,
          $resourcesColumnBundleId INTEGER,
          $resourcesColumnRoomId INTEGER,
          FOREIGN KEY ($resourcesColumnBundleId) REFERENCES $tableBundles($bundlesColumnId)
        )'''),
    ]);
    await _insertInitialData(db);
  }

  _insertInitialData(db) async {
    //insert rooms
    await Future.forEach(data, (Map<String, dynamic> room) async {
      final Room newRoom = await insertRoom(room['room'], db);

      //insert bundnles
      await Future.forEach(room['bundles'],
          (Map<String, dynamic> bundleMap) async {
        Bundle bundle = bundleMap['bundle'];
        bundle.roomId = newRoom.id;
        final Bundle newBundle = await insertBundle(bundle, db);

        //insert resources
        await Future.forEach(bundleMap['resources'], (Resource resource) async {
          resource.roomId = newRoom.id;
          resource.bundleId = newBundle.id;
          insertResource(resource, db);
        });
      });
    });
    print('finished insering initial data...');
  }

  Future<List<Room>> getRooms() async {
    final db = await database;
    List<Room> roomsList = [];

    var rooms = await db.query(tableRooms, columns: [
      roomsColumnId,
      roomsColumnTitle,
      roomsColumnImage,
      roomsColumnDone,
    ]);

    rooms.forEach((currentRoom) {
      Room room = Room.fromMap(currentRoom);
      roomsList.add(room);
    });

    return roomsList;
  }

  Future<List<Bundle>> getBundlesByRoomId(int roomId) async {
    final db = await database;
    List<Bundle> bundlesList = [];

    var bundles = await db.query(
      tableBundles,
      columns: [
        bundlesColumnId,
        bundlesColumnTitle,
        bundlesColumnImage,
        bundlesColumnDone,
        bundlesColumnRoomId,
      ],
      where: '$bundlesColumnRoomId = ?',
      whereArgs: [roomId],
    );

    bundles.forEach((currentBundle) {
      Bundle bundle = Bundle.fromMap(currentBundle);
      bundlesList.add(bundle);
    });

    return bundlesList;
  }

  Future<List<Resource>> getResourcesByBundleId(int bundleId) async {
    final db = await database;
    List<Resource> resourcesList = [];

    var resources = await db.query(
      tableResources,
      columns: [
        resourcesColumnId,
        resourcesColumnTitle,
        resourcesColumnImage,
        resourcesColumnQuantity,
        resourcesColumnDone,
        resourcesColumnRoomId,
        resourcesColumnBundleId,
      ],
      where: '$resourcesColumnBundleId = ?',
      whereArgs: [bundleId],
    );

    resources.forEach((currentResource) {
      Resource bundle = Resource.fromMap(currentResource);
      resourcesList.add(bundle);
    });

    return resourcesList;
  }

  Future<Room> insertRoom(Room room, [Database db]) async {
    if (db == null) {
      db = await database;
    }
    room.id = await db.insert(tableRooms, room.toMap());
    return room;
  }

  Future<Bundle> insertBundle(Bundle bundle, [Database db]) async {
    if (db == null) {
      db = await database;
    }
    bundle.id = await db.insert(tableBundles, bundle.toMap());
    return bundle;
  }

  Future<Resource> insertResource(Resource resource, [Database db]) async {
    if (db == null) {
      db = await database;
    }
    resource.id = await db.insert(tableResources, resource.toMap());
    return resource;
  }

  Future<int> updateResource(Resource resource) async {
    Database db = await database;
    return await db.update(
      tableResources,
      resource.toMap(),
      where: '$resourcesColumnId = ?',
      whereArgs: [resource.id],
    );
  }

  Future<int> updateBundle(Bundle bundle) async {
    Database db = await database;
    return await db.update(
      tableBundles,
      bundle.toMap(),
      where: '$bundlesColumnId = ?',
      whereArgs: [bundle.id],
    );
  }

  Future<int> updateRoom(Room room) async {
    Database db = await database;
    return await db.update(
      tableRooms,
      room.toMap(),
      where: '$roomsColumnId = ?',
      whereArgs: [room.id],
    );
  }
}
