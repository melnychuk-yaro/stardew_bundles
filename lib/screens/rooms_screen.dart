import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/screens/room_screen.dart';
import 'package:stardrew_bundles/widgets/room_card.dart';

class RoomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stardew Bundles')),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 2,
        children: context.watch<BundlesData>().rooms.map((Room room) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RoomScreen(room),
              ));
            },
            child: RoomCard(room),
          );
        }).toList(),
      ),
    );
  }
}
