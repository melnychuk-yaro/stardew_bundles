import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:stardrew_bundles/widgets/resource_card.dart';
import 'package:stardrew_bundles/widgets/bundle_title.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen(this.room);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.title)),
      body: SafeArea(
        right: false,
        left: false,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemCount: room.bundles.length,
          itemBuilder: (context, index) {
            Bundle bundle = room.bundles[index];
            bool isBunleDone =
                context.watch<BundlesData>().isDoneBundle(bundle);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BundleTitle(
                  isBunleDone: isBunleDone,
                  room: room,
                  bundle: bundle,
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: bundle.resources.length,
                    itemBuilder: (context, index) {
                      return ResourceCard(
                        resource: bundle.resources[index],
                        bundle: bundle,
                        room: room,
                      );
                    },
                  ),
                ),
                SizedBox(height: 8.0)
              ],
            );
          },
        ),
      ),
    );
  }
}
