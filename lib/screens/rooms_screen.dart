import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/screens/room_screen.dart';
import 'package:stardrew_bundles/widgets/room_card.dart';

class RoomsScreen extends StatefulWidget {
  @override
  _RoomsScreenState createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BundlesData>().getRooms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stardew Bundles')),
      body: FutureBuilder<Object>(
          future: null,
          builder: (context, snapshot) {
            return GridView.count(
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
            );
          }),
    );
  }
}
