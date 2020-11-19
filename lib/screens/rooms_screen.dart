import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/widgets/room.dart';

class RoomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stardew Bundles')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: context.watch<BundlesData>().rooms.map((Room room) {
            return RoomCard(room);
          }).toList(),
        ),
      ),
    );
  }
}
