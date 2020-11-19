import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard(this.room);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: GridTile(
        child: Image.asset(
          'assets/images/rooms/Community_Center_Crafts_Room.png',
          fit: BoxFit.cover,
        ),
        footer: Container(
          color: Color(0xAAFFFFFF),
          width: double.infinity,
          child: Text(room.title, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
