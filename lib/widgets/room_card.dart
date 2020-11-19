import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard(this.room);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      margin: EdgeInsets.all(8.0),
      child: GridTile(
        child: Image.asset(room.image, fit: BoxFit.cover),
        footer: Container(
          color: Color(0xAAFFFFFF),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            room.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
