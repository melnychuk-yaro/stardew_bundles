import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:stardrew_bundles/widgets/resource_card.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen(this.room);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.title)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          ...room.bundles.map((Bundle bundle) {
            bool isBunleCompleted =
                context.watch<BundlesData>().isCompletedBundle(bundle);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  visualDensity: VisualDensity(horizontal: -4),
                  leading: Image.asset(bundle.image),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Text('bundle.title', style: TextStyle(fontSize: 32.0)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: isBunleCompleted
                              ? Icon(Icons.done, color: Colors.lightGreen)
                              : Icon(Icons.cancel, color: Colors.red[300]),
                        )
                      ],
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: bundle.resources.map((Resource resource) {
                      return Checkbox(
                        value: context
                            .watch<BundlesData>()
                            .isCompletedResource(resource),
                        onChanged: (_) => context.read<BundlesData>()
                          ..toggleIsCompletedResource(resource)
                          ..checkBundleIsCompleted(bundle),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  height: 216.0,
                  child: ListView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: bundle.resources.length,
                    itemBuilder: (context, index) {
                      return ResourceCard(bundle.resources[index]);
                    },
                  ),
                ),
                SizedBox(height: 8.0)
              ],
            );
          }),
        ],
      ),
    );
  }
}
